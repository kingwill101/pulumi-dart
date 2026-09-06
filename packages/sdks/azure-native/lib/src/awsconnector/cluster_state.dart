import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ClusterState implements pulumi.PulumiEnum<String> {
  bOOTSTRAPPING("BOOTSTRAPPING"),
  rUNNING("RUNNING"),
  sTARTING("STARTING"),
  tERMINATED("TERMINATED"),
  tERMINATEDWITHERRORS("TERMINATED_WITH_ERRORS"),
  tERMINATING("TERMINATING"),
  wAITING("WAITING");

  const ClusterState(this.wireValue);
  @override
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
