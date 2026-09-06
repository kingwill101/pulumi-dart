import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of connected cluster.
enum ConnectedClusterKind implements pulumi.PulumiEnum<String> {
  valueProvisionedCluster("ProvisionedCluster");

  const ConnectedClusterKind(this.wireValue);
  @override
  final String wireValue;

  static ConnectedClusterKind fromValue(String value) {
    for (final item in ConnectedClusterKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectedClusterKind value: $value');
  }
}
