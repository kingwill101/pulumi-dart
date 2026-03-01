// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPrivateClusterConfigMasterGlobalAccessConfig {
  /// Whether the cluster master is accessible globally or not.
  final bool enabled;

  /// Creates a new [GetClusterPrivateClusterConfigMasterGlobalAccessConfig].
  /// [enabled] Whether the cluster master is accessible globally or not.
  GetClusterPrivateClusterConfigMasterGlobalAccessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterPrivateClusterConfigMasterGlobalAccessConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
