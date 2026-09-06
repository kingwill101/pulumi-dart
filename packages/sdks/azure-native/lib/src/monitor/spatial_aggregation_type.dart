import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of spatial aggregation.
enum SpatialAggregationType implements pulumi.PulumiEnum<String> {
  average("Average"),
  min("Min"),
  max("Max"),
  sum("Sum"),
  count("Count");

  const SpatialAggregationType(this.wireValue);
  @override
  final String wireValue;

  static SpatialAggregationType fromValue(String value) {
    for (final item in SpatialAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SpatialAggregationType value: $value');
  }
}
