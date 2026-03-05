/// Sku family of the Cloud HSM Cluster
enum CloudHsmClusterSkuFamily {
  valueB("B");

  const CloudHsmClusterSkuFamily(this.wireValue);
  final String wireValue;

  static CloudHsmClusterSkuFamily fromValue(String value) {
    for (final item in CloudHsmClusterSkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudHsmClusterSkuFamily value: $value');
  }
}

