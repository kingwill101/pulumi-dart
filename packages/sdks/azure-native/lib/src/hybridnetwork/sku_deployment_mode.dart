/// The sku deployment mode.
enum SkuDeploymentMode {
  valueUnknown("Unknown"),
  valueAzure("Azure"),
  valuePrivateEdgeZone("PrivateEdgeZone");

  const SkuDeploymentMode(this.wireValue);
  final String wireValue;

  static SkuDeploymentMode fromValue(String value) {
    for (final item in SkuDeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuDeploymentMode value: $value');
  }
}
