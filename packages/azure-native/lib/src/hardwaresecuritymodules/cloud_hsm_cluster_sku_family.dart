/// Sku family of the Cloud HSM Cluster
enum CloudHsmClusterSkuFamily {
  valueB("B");

  const CloudHsmClusterSkuFamily(this.value);
  final String value;

  static CloudHsmClusterSkuFamily fromValue(String value) {
    for (final item in CloudHsmClusterSkuFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudHsmClusterSkuFamily value: $value');
  }
}

