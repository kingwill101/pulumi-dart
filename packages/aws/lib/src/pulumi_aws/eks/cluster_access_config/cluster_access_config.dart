// ignore_for_file: unused_element, unnecessary_cast

class ClusterAccessConfig {
  /// The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final String? authenticationMode;

  /// Whether or not to bootstrap the access config values to the cluster. Default is `true`.
  final bool? bootstrapClusterCreatorAdminPermissions;

  ClusterAccessConfig({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationModeValue = authenticationMode;
    if (authenticationModeValue != null) {
      map['authenticationMode'] = authenticationModeValue;
    }
    final bootstrapClusterCreatorAdminPermissionsValue =
        bootstrapClusterCreatorAdminPermissions;
    if (bootstrapClusterCreatorAdminPermissionsValue != null) {
      map['bootstrapClusterCreatorAdminPermissions'] =
          bootstrapClusterCreatorAdminPermissionsValue;
    }
    return map;
  }

  factory ClusterAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAccessConfig(
      authenticationMode: map['authenticationMode'] == null
          ? null
          : map['authenticationMode'] as String,
      bootstrapClusterCreatorAdminPermissions:
          map['bootstrapClusterCreatorAdminPermissions'] == null
              ? null
              : map['bootstrapClusterCreatorAdminPermissions'] as bool,
    );
  }
}
