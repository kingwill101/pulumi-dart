import 'package:pulumi/pulumi.dart' as pulumi;

/// Aggregation type. Relevant and required only for rules of the kind LogAlert.
enum TimeAggregation implements pulumi.PulumiEnum<String> {
  count("Count"),
  average("Average"),
  minimum("Minimum"),
  maximum("Maximum"),
  total("Total");

  const TimeAggregation(this.wireValue);
  @override
  final String wireValue;

  static TimeAggregation fromValue(String value) {
    for (final item in TimeAggregation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeAggregation value: $value');
  }
}
