// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_mode_enum_value.dart';

/// Definition of AccessConfigResponse
class AccessConfigResponse {
  /// <p>The current authentication mode of the cluster.</p>
  final AuthenticationModeEnumValue? authenticationMode;
  /// <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  final bool? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [AccessConfigResponse].
  /// [authenticationMode] <p>The current authentication mode of the cluster.</p>
  /// [bootstrapClusterCreatorAdminPermissions] <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  AccessConfigResponse({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode == null ? null : authenticationMode!.toMap(),
      'bootstrapClusterCreatorAdminPermissions': ?bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory AccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse(
      authenticationMode: map['authenticationMode'] == null ? null : AuthenticationModeEnumValue.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>()),
      bootstrapClusterCreatorAdminPermissions: map['bootstrapClusterCreatorAdminPermissions'] == null ? null : map['bootstrapClusterCreatorAdminPermissions'] as bool,
    );
  }
}

