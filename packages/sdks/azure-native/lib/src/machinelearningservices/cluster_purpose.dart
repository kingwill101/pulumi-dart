/// Intended usage of the cluster
enum ClusterPurpose {
  valueFastProd("FastProd"),
  valueDenseProd("DenseProd"),
  valueDevTest("DevTest");

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
