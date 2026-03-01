// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';

/// Database Identity.
class Identity {
  /// The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  final String? federatedClientId;
  /// Identity type of the main principal.
  final String? identityType;
  /// User identity ids
  final List<DatabaseIdentity>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [federatedClientId] The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  /// [identityType] Identity type of the main principal.
  /// [userAssignedIdentities] User identity ids
  Identity({
    this.federatedClientId,
    this.identityType,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedClientId': ?federatedClientId,
      'identityType': ?identityType,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeList<DatabaseIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      federatedClientId: map['federatedClientId'] == null ? null : map['federatedClientId'] as String,
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeList<DatabaseIdentity>(map['userAssignedIdentities'], (value) => DatabaseIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

