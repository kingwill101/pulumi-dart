import 'package:pulumi/pulumi.dart' as pulumi;

/// The action that should be taken for a specified IP address, subnet range or tag.
enum NetworkSecurityGroupRuleAccess implements pulumi.PulumiEnum<String> {
  allow("Allow"),
  deny("Deny");

  const NetworkSecurityGroupRuleAccess(this.wireValue);
  @override
  final String wireValue;

  static NetworkSecurityGroupRuleAccess fromValue(String value) {
    for (final item in NetworkSecurityGroupRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkSecurityGroupRuleAccess value: $value');
  }
}
