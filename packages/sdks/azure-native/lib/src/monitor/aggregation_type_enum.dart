/// the criteria time aggregation types.
enum AggregationTypeEnum {
  valueAverage("Average"),
  valueCount("Count"),
  valueMinimum("Minimum"),
  valueMaximum("Maximum"),
  valueTotal("Total");

  const AggregationTypeEnum(this.value);
  final String value;

  static AggregationTypeEnum fromValue(String value) {
    for (final item in AggregationTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AggregationTypeEnum value: $value');
  }
}

