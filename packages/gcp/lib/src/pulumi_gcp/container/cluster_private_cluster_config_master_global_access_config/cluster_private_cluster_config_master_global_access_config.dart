// ignore_for_file: unused_element, unnecessary_cast

class ClusterPrivateClusterConfigMasterGlobalAccessConfig {
  /// Whether the cluster master is accessible globally or
  /// not.
  final bool enabled;

  ClusterPrivateClusterConfigMasterGlobalAccessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterPrivateClusterConfigMasterGlobalAccessConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
