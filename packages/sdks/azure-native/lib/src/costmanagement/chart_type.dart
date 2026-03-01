/// Chart type of the main view in Cost Analysis. Required.
enum ChartType {
  valueArea("Area"),
  valueLine("Line"),
  valueStackedColumn("StackedColumn"),
  valueGroupedColumn("GroupedColumn"),
  valueTable("Table");

  const ChartType(this.value);
  final String value;

  static ChartType fromValue(String value) {
    for (final item in ChartType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChartType value: $value');
  }
}

