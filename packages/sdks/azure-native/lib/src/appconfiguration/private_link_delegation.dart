import 'package:pulumi/pulumi.dart' as pulumi;

/// The data plane proxy private link delegation. This property manages if a request from delegated Azure Resource Manager (ARM) private link is allowed when the data plane resource requires private link.
enum PrivateLinkDelegation implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PrivateLinkDelegation(this.wireValue);
  @override
  final String wireValue;

  static PrivateLinkDelegation fromValue(String value) {
    for (final item in PrivateLinkDelegation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkDelegation value: $value');
  }
}
