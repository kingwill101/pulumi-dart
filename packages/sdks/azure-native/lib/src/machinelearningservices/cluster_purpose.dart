/// Intended usage of the cluster
enum ClusterPurpose {
  fastProd("FastProd"),
  denseProd("DenseProd"),
  devTest("DevTest");

  const ClusterPurpose(this.wireValue);
  final String wireValue;

  static ClusterPurpose fromValue(String value) {
    for (final item in ClusterPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterPurpose value: $value');
  }
}
