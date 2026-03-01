// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_role_response.dart';
import 'entra_identity_provider_response.dart';

/// Definition of Mongo user resource on a cluster.
class UserPropertiesResponse {
  /// The user's identity provider definition.
  final EntraIdentityProviderResponse? identityProvider;
  /// The provisioning state of the user.
  final String provisioningState;
  /// Database roles that are assigned to the user.
  final List<DatabaseRoleResponse>? roles;

  /// Creates a new [UserPropertiesResponse].
  /// [identityProvider] The user's identity provider definition.
  /// [provisioningState] The provisioning state of the user.
  /// [roles] Database roles that are assigned to the user.
  UserPropertiesResponse({
    this.identityProvider,
    required this.provisioningState,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?identityProvider == null ? null : identityProvider!.toMap(),
      'provisioningState': provisioningState,
      'roles': ?roles == null ? null : pulumi.Input.encodeList<DatabaseRoleResponse, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory UserPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserPropertiesResponse(
      identityProvider: map['identityProvider'] == null ? null : EntraIdentityProviderResponse.fromMap((map['identityProvider'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<DatabaseRoleResponse>(map['roles'], (value) => DatabaseRoleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

