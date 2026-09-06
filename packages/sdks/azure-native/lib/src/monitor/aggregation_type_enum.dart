import 'package:pulumi/pulumi.dart' as pulumi;

/// the criteria time aggregation types.
enum AggregationTypeEnum implements pulumi.PulumiEnum<String> {
  valueAverage("Average"),
  valueCount("Count"),
  valueMinimum("Minimum"),
  valueMaximum("Maximum"),
  valueTotal("Total");

  const AggregationTypeEnum(this.wireValue);
  @override
  final String wireValue;

  static AggregationTypeEnum fromValue(String value) {
    for (final item in AggregationTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AggregationTypeEnum value: $value');
  }
}
