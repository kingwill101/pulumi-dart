import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of temporal aggregation.
enum TemporalAggregationType implements pulumi.PulumiEnum<String> {
  average("Average"),
  min("Min"),
  max("Max"),
  sum("Sum"),
  rate("Rate"),
  iRate("IRate"),
  delta("Delta"),
  iDelta("IDelta"),
  increase("Increase");

  const TemporalAggregationType(this.wireValue);
  @override
  final String wireValue;

  static TemporalAggregationType fromValue(String value) {
    for (final item in TemporalAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemporalAggregationType value: $value');
  }
}
