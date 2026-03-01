/// Type of Actions.
enum WebApplicationFirewallAction {
  valueAllow("Allow"),
  valueBlock("Block"),
  valueLog("Log"),
  valueJSChallenge("JSChallenge");

  const WebApplicationFirewallAction(this.value);
  final String value;

  static WebApplicationFirewallAction fromValue(String value) {
    for (final item in WebApplicationFirewallAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallAction value: $value');
  }
}

