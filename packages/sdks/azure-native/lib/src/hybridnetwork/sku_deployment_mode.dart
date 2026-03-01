/// The sku deployment mode.
enum SkuDeploymentMode {
  valueUnknown("Unknown"),
  valueAzure("Azure"),
  valuePrivateEdgeZone("PrivateEdgeZone");

  const SkuDeploymentMode(this.value);
  final String value;

  static SkuDeploymentMode fromValue(String value) {
    for (final item in SkuDeploymentMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuDeploymentMode value: $value');
  }
}

