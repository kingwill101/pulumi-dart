import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceStateName implements pulumi.PulumiEnum<String> {
  pending("pending"),
  running("running"),
  shuttingDown("shutting-down"),
  stopped("stopped"),
  stopping("stopping"),
  terminated("terminated");

  const InstanceStateName(this.wireValue);
  @override
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
