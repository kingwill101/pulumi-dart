import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceAutoRecoveryState implements pulumi.PulumiEnum<String> {
  default_("default"),
  disabled("disabled");

  const InstanceAutoRecoveryState(this.wireValue);
  @override
  final String wireValue;

  static InstanceAutoRecoveryState fromValue(String value) {
    for (final item in InstanceAutoRecoveryState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceAutoRecoveryState value: $value');
  }
}
