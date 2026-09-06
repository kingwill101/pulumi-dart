import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku family of the Cloud HSM Cluster
enum CloudHsmClusterSkuFamily implements pulumi.PulumiEnum<String> {
  valueB("B");

  const CloudHsmClusterSkuFamily(this.wireValue);
  @override
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
