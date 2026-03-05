/// The stage at which the script is executed.
/// Specifying `NodeImageBuildTime` will ensure changes are persisted into the node image.
enum ExecutionPoint {
  nodeImageBuildTime("NodeImageBuildTime"),
  nodeProvisionTime("NodeProvisionTime");

  const ExecutionPoint(this.wireValue);
  final String wireValue;

  static ExecutionPoint fromValue(String value) {
    for (final item in ExecutionPoint.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionPoint value: $value');
  }
}

