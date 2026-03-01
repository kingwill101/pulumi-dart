/// The action that should be taken for a specified IP address, subnet range or tag.
enum NetworkSecurityGroupRuleAccess {
  allow("Allow"),
  deny("Deny");

  const NetworkSecurityGroupRuleAccess(this.value);
  final String value;

  static NetworkSecurityGroupRuleAccess fromValue(String value) {
    for (final item in NetworkSecurityGroupRuleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkSecurityGroupRuleAccess value: $value');
  }
}

