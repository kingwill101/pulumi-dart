import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of this SKU.
enum ClusterSkuName implements pulumi.PulumiEnum<String> {
  valueDedicated("Dedicated");

  const ClusterSkuName(this.wireValue);
  @override
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
