/// The action to take on matched requests.
enum IngressRuleActionAppengineV1beta {
  unspecifiedAction("UNSPECIFIED_ACTION"),
  allow("ALLOW"),
  deny("DENY");

  const IngressRuleActionAppengineV1beta(this.value);
  final String value;

  static IngressRuleActionAppengineV1beta fromValue(String value) {
    for (final item in IngressRuleActionAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IngressRuleActionAppengineV1beta value: $value',
    );
  }
}
