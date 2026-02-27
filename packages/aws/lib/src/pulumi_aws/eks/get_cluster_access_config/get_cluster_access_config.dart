// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAccessConfig {
  /// Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final String authenticationMode;

  /// Default to `true`.
  final bool bootstrapClusterCreatorAdminPermissions;

  GetClusterAccessConfig({
    required this.authenticationMode,
    required this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationMode'] = authenticationMode;
    map['bootstrapClusterCreatorAdminPermissions'] =
        bootstrapClusterCreatorAdminPermissions;
    return map;
  }

  factory GetClusterAccessConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAccessConfig(
      authenticationMode: map['authenticationMode'] as String,
      bootstrapClusterCreatorAdminPermissions:
          map['bootstrapClusterCreatorAdminPermissions'] as bool,
    );
  }
}
