import 'package:pulumi/pulumi.dart' as pulumi;

/// The intended operation for a cluster.
enum OperationType implements pulumi.PulumiEnum<String> {
  clusterProvisioning("ClusterProvisioning"),
  clusterUpgrade("ClusterUpgrade");

  const OperationType(this.wireValue);
  @override
  final String wireValue;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}
