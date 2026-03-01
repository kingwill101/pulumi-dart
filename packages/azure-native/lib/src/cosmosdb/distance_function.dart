/// The distance function to use for distance calculation in between vectors.
enum DistanceFunction {
  valueEuclidean("euclidean"),
  valueCosine("cosine"),
  valueDotproduct("dotproduct");

  const DistanceFunction(this.value);
  final String value;

  static DistanceFunction fromValue(String value) {
    for (final item in DistanceFunction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistanceFunction value: $value');
  }
}

