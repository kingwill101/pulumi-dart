// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_mode_enum_value_response.dart';

/// Definition of AccessConfigResponse
class AccessConfigResponseResponse {
  /// &lt;p&gt;The current authentication mode of the cluster.&lt;/p&gt;
  final pulumi.Input<AuthenticationModeEnumValueResponse>? authenticationMode;
  /// &lt;p&gt;Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.&lt;/p&gt;
  final pulumi.Input<bool>? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [AccessConfigResponseResponse].
  /// [authenticationMode] &lt;p&gt;The current authentication mode of the cluster.&lt;/p&gt;
  /// [bootstrapClusterCreatorAdminPermissions] &lt;p&gt;Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.&lt;/p&gt;
  const AccessConfigResponseResponse({
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
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationModeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapClusterCreatorAdminPermissions: (() { final guardedValue = map['bootstrapClusterCreatorAdminPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

