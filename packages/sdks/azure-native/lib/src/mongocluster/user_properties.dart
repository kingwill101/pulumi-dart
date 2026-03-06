// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_role.dart';
import 'entra_identity_provider.dart';

/// Definition of Mongo user resource on a cluster.
class UserProperties {
  /// The user's identity provider definition.
  final pulumi.Input<EntraIdentityProvider>? identityProvider;
  /// Database roles that are assigned to the user.
  final pulumi.Input<List<DatabaseRole>>? roles;

  /// Creates a new [UserProperties].
  /// [identityProvider] The user's identity provider definition.
  /// [roles] Database roles that are assigned to the user.
  const UserProperties({
    this.identityProvider,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?pulumi.Input.mapOptionalInputValue<EntraIdentityProvider, Map<String, dynamic>>(identityProvider, (value) => value.toMap()),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<DatabaseRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<DatabaseRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserProperties.fromMap(Map<String, dynamic> map) {
    return UserProperties(
      identityProvider: (() { final guardedValue = map['identityProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntraIdentityProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseRole>(guardedValue, (value) => DatabaseRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

