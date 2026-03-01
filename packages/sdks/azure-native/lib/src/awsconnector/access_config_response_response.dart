// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_mode_enum_value_response.dart';

/// Definition of AccessConfigResponse
class AccessConfigResponseResponse {
  /// <p>The current authentication mode of the cluster.</p>
  final AuthenticationModeEnumValueResponse? authenticationMode;
  /// <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  final bool? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [AccessConfigResponseResponse].
  /// [authenticationMode] <p>The current authentication mode of the cluster.</p>
  /// [bootstrapClusterCreatorAdminPermissions] <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  AccessConfigResponseResponse({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode == null ? null : authenticationMode!.toMap(),
      'bootstrapClusterCreatorAdminPermissions': ?bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory AccessConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseResponse(
      authenticationMode: map['authenticationMode'] == null ? null : AuthenticationModeEnumValueResponse.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>()),
      bootstrapClusterCreatorAdminPermissions: map['bootstrapClusterCreatorAdminPermissions'] == null ? null : map['bootstrapClusterCreatorAdminPermissions'] as bool,
    );
  }
}

