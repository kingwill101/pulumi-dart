import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
enum StopOnDisconnectEnableStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StopOnDisconnectEnableStatus(this.wireValue);
  @override
  final String wireValue;

  static StopOnDisconnectEnableStatus fromValue(String value) {
    for (final item in StopOnDisconnectEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StopOnDisconnectEnableStatus value: $value');
  }
}
