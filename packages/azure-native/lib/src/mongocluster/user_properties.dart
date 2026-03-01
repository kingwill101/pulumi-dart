// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_role.dart';
import 'entra_identity_provider.dart';

/// Definition of Mongo user resource on a cluster.
class UserProperties {
  /// The user's identity provider definition.
  final EntraIdentityProvider? identityProvider;
  /// Database roles that are assigned to the user.
  final List<DatabaseRole>? roles;

  /// Creates a new [UserProperties].
  /// [identityProvider] The user's identity provider definition.
  /// [roles] Database roles that are assigned to the user.
  UserProperties({
    this.identityProvider,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?identityProvider == null ? null : identityProvider!.toMap(),
      'roles': ?roles == null ? null : pulumi.Input.encodeList<DatabaseRole, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory UserProperties.fromMap(Map<String, dynamic> map) {
    return UserProperties(
      identityProvider: map['identityProvider'] == null ? null : EntraIdentityProvider.fromMap((map['identityProvider'] as Map).cast<String, dynamic>()),
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<DatabaseRole>(map['roles'], (value) => DatabaseRole.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

