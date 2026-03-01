/// The event grouping aggregation kinds
enum EventGroupingAggregationKind {
  valueSingleAlert("SingleAlert"),
  valueAlertPerResult("AlertPerResult");

  const EventGroupingAggregationKind(this.value);
  final String value;

  static EventGroupingAggregationKind fromValue(String value) {
    for (final item in EventGroupingAggregationKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventGroupingAggregationKind value: $value');
  }
}

