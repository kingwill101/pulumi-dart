// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_role_response.dart';
import 'entra_identity_provider_response.dart';

/// Definition of Mongo user resource on a cluster.
class UserPropertiesResponse {
  /// The user's identity provider definition.
  final pulumi.Input<EntraIdentityProviderResponse>? identityProvider;
  /// The provisioning state of the user.
  final pulumi.Input<String> provisioningState;
  /// Database roles that are assigned to the user.
  final pulumi.Input<List<DatabaseRoleResponse>>? roles;

  /// Creates a new [UserPropertiesResponse].
  /// [identityProvider] The user's identity provider definition.
  /// [provisioningState] The provisioning state of the user.
  /// [roles] Database roles that are assigned to the user.
  const UserPropertiesResponse({
    this.identityProvider,
    required this.provisioningState,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?pulumi.Input.mapOptionalInputValue<EntraIdentityProviderResponse, Map<String, dynamic>>(identityProvider, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<DatabaseRoleResponse>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<DatabaseRoleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserPropertiesResponse(
      identityProvider: (() { final guardedValue = map['identityProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntraIdentityProviderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseRoleResponse>(guardedValue, (value) => DatabaseRoleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

