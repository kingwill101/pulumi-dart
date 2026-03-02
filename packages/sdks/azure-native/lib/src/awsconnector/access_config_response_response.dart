// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_mode_enum_value_response.dart';

/// Definition of AccessConfigResponse
class AccessConfigResponseResponse {
  /// <p>The current authentication mode of the cluster.</p>
  final pulumi.Input<AuthenticationModeEnumValueResponse>? authenticationMode;
  /// <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  final pulumi.Input<bool>? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [AccessConfigResponseResponse].
  /// [authenticationMode] <p>The current authentication mode of the cluster.</p>
  /// [bootstrapClusterCreatorAdminPermissions] <p>Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.</p>
  AccessConfigResponseResponse({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<AuthenticationModeEnumValueResponse, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'bootstrapClusterCreatorAdminPermissions': ?bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory AccessConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (AuthenticationModeEnumValueResponse.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())).input(),
      bootstrapClusterCreatorAdminPermissions: map['bootstrapClusterCreatorAdminPermissions'] == null ? null : (map['bootstrapClusterCreatorAdminPermissions'] as bool).input(),
    );
  }
}

