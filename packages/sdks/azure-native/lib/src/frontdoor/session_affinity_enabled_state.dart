import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
enum SessionAffinityEnabledState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const SessionAffinityEnabledState(this.wireValue);
  @override
  final String wireValue;

  static SessionAffinityEnabledState fromValue(String value) {
    for (final item in SessionAffinityEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAffinityEnabledState value: $value');
  }
}
