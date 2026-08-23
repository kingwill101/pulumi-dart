// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_mode_enum_value.dart';

/// Definition of AccessConfigResponse
class AccessConfigResponse {
  /// &lt;p&gt;The current authentication mode of the cluster.&lt;/p&gt;
  final pulumi.Input<AuthenticationModeEnumValue>? authenticationMode;
  /// &lt;p&gt;Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.&lt;/p&gt;
  final pulumi.Input<bool>? bootstrapClusterCreatorAdminPermissions;

  /// Creates a new [AccessConfigResponse].
  /// [authenticationMode] &lt;p&gt;The current authentication mode of the cluster.&lt;/p&gt;
  /// [bootstrapClusterCreatorAdminPermissions] &lt;p&gt;Specifies whether or not the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time.&lt;/p&gt;
  const AccessConfigResponse({
    this.authenticationMode,
    this.bootstrapClusterCreatorAdminPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<AuthenticationModeEnumValue, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'bootstrapClusterCreatorAdminPermissions': ?bootstrapClusterCreatorAdminPermissions,
    };
  }

  factory AccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationModeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapClusterCreatorAdminPermissions: (() { final guardedValue = map['bootstrapClusterCreatorAdminPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
