/// IP Filter Action
enum NetworkRuleIPAction {
  valueAllow("Allow");

  const NetworkRuleIPAction(this.wireValue);
  final String wireValue;

  static NetworkRuleIPAction fromValue(String value) {
    for (final item in NetworkRuleIPAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleIPAction value: $value');
  }
}
