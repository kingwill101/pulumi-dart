/// Name of this SKU.
enum ClusterSkuName {
  valueDedicated("Dedicated");

  const ClusterSkuName(this.wireValue);
  final String wireValue;

  static ClusterSkuName fromValue(String value) {
    for (final item in ClusterSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSkuName value: $value');
  }
}

