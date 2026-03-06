// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAccessConfig {
  /// Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final pulumi.Input<String> authenticationMode;
  /// Default to `true`.
  final pulumi.Input<bool> bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [GetClusterAccessConfig].
  /// [authenticationMode] Values returned are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  /// [bootstrapClusterCreatorAdminPermissions] Default to `true`.
  const GetClusterAccessConfig({
    required this.authenticationMode,
    required this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': authenticationMode,
      'bootstrapClusterCreatorAdminPermissions': bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory GetClusterAccessConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAccessConfig(
      authenticationMode: pulumi.Input.fromValue(map['authenticationMode'] as String),
      bootstrapClusterCreatorAdminPermissions: pulumi.Input.fromValue(map['bootstrapClusterCreatorAdminPermissions'] as bool),
    );
  }
}

