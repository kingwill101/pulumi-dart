import 'package:pulumi/pulumi.dart' as pulumi;

/// The distance function to use for distance calculation in between vectors.
enum DistanceFunction implements pulumi.PulumiEnum<String> {
  valueEuclidean("euclidean"),
  valueCosine("cosine"),
  valueDotproduct("dotproduct");

  const DistanceFunction(this.wireValue);
  @override
  final String wireValue;

  static DistanceFunction fromValue(String value) {
    for (final item in DistanceFunction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistanceFunction value: $value');
  }
}
