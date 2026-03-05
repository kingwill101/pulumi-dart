/// Property value
enum InstanceStateName {
  pending("pending"),
  running("running"),
  shuttingDown("shutting-down"),
  stopped("stopped"),
  stopping("stopping"),
  terminated("terminated");

  const InstanceStateName(this.wireValue);
  final String wireValue;

  static InstanceStateName fromValue(String value) {
    for (final item in InstanceStateName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceStateName value: $value');
  }
}

