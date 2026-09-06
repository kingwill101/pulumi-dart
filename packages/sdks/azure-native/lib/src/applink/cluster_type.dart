import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster type
enum ClusterType implements pulumi.PulumiEnum<String> {
  aKS("AKS");

  const ClusterType(this.wireValue);
  @override
  final String wireValue;

  static ClusterType fromValue(String value) {
    for (final item in ClusterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterType value: $value');
  }
}
