/// Name of this SKU.
enum ClusterSkuName {
  valueDedicated("Dedicated");

  const ClusterSkuName(this.value);
  final String value;

  static ClusterSkuName fromValue(String value) {
    for (final item in ClusterSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSkuName value: $value');
  }
}

