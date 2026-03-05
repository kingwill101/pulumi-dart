/// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
enum NetworkRuleAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const NetworkRuleAction(this.wireValue);
  final String wireValue;

  static NetworkRuleAction fromValue(String value) {
    for (final item in NetworkRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleAction value: $value');
  }
}

