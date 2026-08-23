/// The network traffic is allowed or denied.
enum SecurityRuleAccess {
  allow("Allow"),
  deny("Deny");

  const SecurityRuleAccess(this.wireValue);
  final String wireValue;

  static SecurityRuleAccess fromValue(String value) {
    for (final item in SecurityRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleAccess value: $value');
  }
}
