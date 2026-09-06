import 'package:pulumi/pulumi.dart' as pulumi;

/// Intended usage of the cluster
enum ClusterPurpose implements pulumi.PulumiEnum<String> {
  fastProd("FastProd"),
  denseProd("DenseProd"),
  devTest("DevTest");

  const ClusterPurpose(this.wireValue);
  @override
  final String wireValue;

  static ClusterPurpose fromValue(String value) {
    for (final item in ClusterPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterPurpose value: $value');
  }
}
