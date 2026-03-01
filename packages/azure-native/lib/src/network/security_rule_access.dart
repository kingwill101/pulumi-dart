/// The network traffic is allowed or denied.
enum SecurityRuleAccess {
  valueAllow("Allow"),
  valueDeny("Deny");

  const SecurityRuleAccess(this.value);
  final String value;

  static SecurityRuleAccess fromValue(String value) {
    for (final item in SecurityRuleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleAccess value: $value');
  }
}

