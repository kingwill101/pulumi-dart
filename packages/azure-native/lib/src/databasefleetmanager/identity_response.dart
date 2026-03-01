// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity_response.dart';

/// Database Identity.
class IdentityResponse {
  /// The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  final String? federatedClientId;
  /// Identity type of the main principal.
  final String? identityType;
  /// User identity ids
  final List<DatabaseIdentityResponse>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [federatedClientId] The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  /// [identityType] Identity type of the main principal.
  /// [userAssignedIdentities] User identity ids
  IdentityResponse({
    this.federatedClientId,
    this.identityType,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedClientId': ?federatedClientId,
      'identityType': ?identityType,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeList<DatabaseIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      federatedClientId: map['federatedClientId'] == null ? null : map['federatedClientId'] as String,
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeList<DatabaseIdentityResponse>(map['userAssignedIdentities'], (value) => DatabaseIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

