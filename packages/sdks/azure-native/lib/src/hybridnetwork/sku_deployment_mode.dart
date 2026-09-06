import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku deployment mode.
enum SkuDeploymentMode implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzure("Azure"),
  valuePrivateEdgeZone("PrivateEdgeZone");

  const SkuDeploymentMode(this.wireValue);
  @override
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
