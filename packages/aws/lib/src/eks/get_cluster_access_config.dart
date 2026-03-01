// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAccessConfig {
  /// Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final String authenticationMode;

  /// Default to `true`.
  final bool bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [GetClusterAccessConfig].
  /// [authenticationMode] Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  /// [bootstrapClusterCreatorAdminPermissions] Default to `true`.
  GetClusterAccessConfig({
    required this.authenticationMode,
    required this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': authenticationMode,
      'bootstrapClusterCreatorAdminPermissions':
          bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory GetClusterAccessConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAccessConfig(
      authenticationMode: map['authenticationMode'] as String,
      bootstrapClusterCreatorAdminPermissions:
          map['bootstrapClusterCreatorAdminPermissions'] as bool,
    );
  }
}
