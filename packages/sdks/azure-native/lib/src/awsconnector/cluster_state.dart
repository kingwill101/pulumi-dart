/// Property value
enum ClusterState {
  bOOTSTRAPPING("BOOTSTRAPPING"),
  rUNNING("RUNNING"),
  sTARTING("STARTING"),
  tERMINATED("TERMINATED"),
  tERMINATEDWITHERRORS("TERMINATED_WITH_ERRORS"),
  tERMINATING("TERMINATING"),
  wAITING("WAITING");

  const ClusterState(this.wireValue);
  final String wireValue;

  static ClusterState fromValue(String value) {
    for (final item in ClusterState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterState value: $value');
  }
}

