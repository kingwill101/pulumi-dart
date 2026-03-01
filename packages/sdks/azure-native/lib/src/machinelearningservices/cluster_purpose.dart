/// Intended usage of the cluster
enum ClusterPurpose {
  valueFastProd("FastProd"),
  valueDenseProd("DenseProd"),
  valueDevTest("DevTest");

  const ClusterPurpose(this.value);
  final String value;

  static ClusterPurpose fromValue(String value) {
    for (final item in ClusterPurpose.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterPurpose value: $value');
  }
}

