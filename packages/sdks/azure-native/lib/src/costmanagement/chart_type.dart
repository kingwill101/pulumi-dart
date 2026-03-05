/// Chart type of the main view in Cost Analysis. Required.
enum ChartType {
  valueArea("Area"),
  valueLine("Line"),
  valueStackedColumn("StackedColumn"),
  valueGroupedColumn("GroupedColumn"),
  valueTable("Table");

  const ChartType(this.wireValue);
  final String wireValue;

  static ChartType fromValue(String value) {
    for (final item in ChartType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChartType value: $value');
  }
}

