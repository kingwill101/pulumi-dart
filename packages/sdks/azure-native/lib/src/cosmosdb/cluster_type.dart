import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
enum ClusterType implements pulumi.PulumiEnum<String> {
  production("Production"),
  nonProduction("NonProduction");

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
