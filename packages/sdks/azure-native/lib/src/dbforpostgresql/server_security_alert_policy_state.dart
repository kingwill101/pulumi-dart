import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the state of the policy, whether it is enabled or disabled.
enum ServerSecurityAlertPolicyState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ServerSecurityAlertPolicyState(this.wireValue);
  @override
  final String wireValue;

  static ServerSecurityAlertPolicyState fromValue(String value) {
    for (final item in ServerSecurityAlertPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSecurityAlertPolicyState value: $value');
  }
}
