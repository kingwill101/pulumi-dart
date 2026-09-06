import 'package:pulumi/pulumi.dart' as pulumi;

/// Chart type of the main view in Cost Analysis. Required.
enum ChartType implements pulumi.PulumiEnum<String> {
  valueArea("Area"),
  valueLine("Line"),
  valueStackedColumn("StackedColumn"),
  valueGroupedColumn("GroupedColumn"),
  valueTable("Table");

  const ChartType(this.wireValue);
  @override
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
