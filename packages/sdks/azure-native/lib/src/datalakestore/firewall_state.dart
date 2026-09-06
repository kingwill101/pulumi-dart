import 'package:pulumi/pulumi.dart' as pulumi;

/// The current state of the IP address firewall for this Data Lake Store account.
enum FirewallState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FirewallState(this.wireValue);
  @override
  final String wireValue;

  static FirewallState fromValue(String value) {
    for (final item in FirewallState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallState value: $value');
  }
}
