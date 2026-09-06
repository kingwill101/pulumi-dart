import 'package:pulumi/pulumi.dart' as pulumi;

/// The aggregation type to use for the numerical columns in the dataset.
enum AggregationType implements pulumi.PulumiEnum<String> {
  valueAverage("Average"),
  valueMinimum("Minimum"),
  valueMaximum("Maximum"),
  valueSum("Sum"),
  valueCount("Count");

  const AggregationType(this.wireValue);
  @override
  final String wireValue;

  static AggregationType fromValue(String value) {
    for (final item in AggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AggregationType value: $value');
  }
}
