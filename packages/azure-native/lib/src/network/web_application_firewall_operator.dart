/// The operator to be matched.
enum WebApplicationFirewallOperator {
  valueIPMatch("IPMatch"),
  valueEqual("Equal"),
  valueContains("Contains"),
  valueLessThan("LessThan"),
  valueGreaterThan("GreaterThan"),
  valueLessThanOrEqual("LessThanOrEqual"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueBeginsWith("BeginsWith"),
  valueEndsWith("EndsWith"),
  valueRegex("Regex"),
  valueGeoMatch("GeoMatch"),
  valueAny("Any");

  const WebApplicationFirewallOperator(this.value);
  final String value;

  static WebApplicationFirewallOperator fromValue(String value) {
    for (final item in WebApplicationFirewallOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallOperator value: $value');
  }
}

