# Start simulated experiment, which offers data as the KaraboBridge
# would be during the experiment:
echo "demo.sh: starting (simulated) server"
python -c "from karabo_bridge import server_sim; server_sim(4545)" &
SIMULATION_PID=$!

# Start client to read 10 trains
echo "demo.sh: starting client"
python demo.py


# shutting down simulated experiment
echo "demo.sh: killing simulated KaraboBridge"
kill $SIMULATION_PID
