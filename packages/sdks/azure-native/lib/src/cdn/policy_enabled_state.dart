import 'package:pulumi/pulumi.dart' as pulumi;

/// describes if the policy is in enabled state or disabled state
enum PolicyEnabledState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const PolicyEnabledState(this.wireValue);
  @override
  final String wireValue;

  static PolicyEnabledState fromValue(String value) {
    for (final item in PolicyEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEnabledState value: $value');
  }
}
