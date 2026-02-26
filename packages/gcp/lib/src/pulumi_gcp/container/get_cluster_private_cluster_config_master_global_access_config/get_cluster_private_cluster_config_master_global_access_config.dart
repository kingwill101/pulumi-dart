// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPrivateClusterConfigMasterGlobalAccessConfig {
  /// Whether the cluster master is accessible globally or not.
  final bool enabled;

  GetClusterPrivateClusterConfigMasterGlobalAccessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterPrivateClusterConfigMasterGlobalAccessConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
