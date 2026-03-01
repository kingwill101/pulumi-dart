/// IP Filter Action
enum NetworkRuleIPAction {
  valueAllow("Allow");

  const NetworkRuleIPAction(this.value);
  final String value;

  static NetworkRuleIPAction fromValue(String value) {
    for (final item in NetworkRuleIPAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleIPAction value: $value');
  }
}

