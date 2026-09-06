import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled state of the config server. This is only used in Consumption tier.
enum ConfigServerEnabledState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ConfigServerEnabledState(this.wireValue);
  @override
  final String wireValue;

  static ConfigServerEnabledState fromValue(String value) {
    for (final item in ConfigServerEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigServerEnabledState value: $value');
  }
}
