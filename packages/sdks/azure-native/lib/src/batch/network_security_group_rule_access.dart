/// The action that should be taken for a specified IP address, subnet range or tag.
enum NetworkSecurityGroupRuleAccess {
  allow("Allow"),
  deny("Deny");

  const NetworkSecurityGroupRuleAccess(this.wireValue);
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

