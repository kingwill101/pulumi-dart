// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAccessConfig {
  /// Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final String authenticationMode;

  /// Default to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
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
