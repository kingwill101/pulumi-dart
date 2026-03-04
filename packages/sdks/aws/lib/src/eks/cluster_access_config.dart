// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAccessConfig {
  /// The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  final pulumi.Input<String>? authenticationMode;

  /// Whether or not to bootstrap the access config values to the cluster. Default is `true`.
  final pulumi.Input<bool>? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [ClusterAccessConfig].
  /// [authenticationMode] The authentication mode for the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`
  /// [bootstrapClusterCreatorAdminPermissions] Whether or not to bootstrap the access config values to the cluster. Default is `true`.
  ClusterAccessConfig({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'bootstrapClusterCreatorAdminPermissions':
          ?bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory ClusterAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAccessConfig(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bootstrapClusterCreatorAdminPermissions: (() {
        final guardedValue = map['bootstrapClusterCreatorAdminPermissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
