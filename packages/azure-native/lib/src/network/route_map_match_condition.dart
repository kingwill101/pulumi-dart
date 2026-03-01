/// Match condition to apply RouteMap rules.
enum RouteMapMatchCondition {
  valueUnknown("Unknown"),
  valueContains("Contains"),
  valueEquals("Equals"),
  valueNotContains("NotContains"),
  valueNotEquals("NotEquals");

  const RouteMapMatchCondition(this.value);
  final String value;

  static RouteMapMatchCondition fromValue(String value) {
    for (final item in RouteMapMatchCondition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteMapMatchCondition value: $value');
  }
}

