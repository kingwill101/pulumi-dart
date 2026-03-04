// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity_response.dart';

/// Database Identity.
class IdentityResponse {
  /// The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  final pulumi.Input<String>? federatedClientId;

  /// Identity type of the main principal.
  final pulumi.Input<String>? identityType;

  /// User identity ids
  final pulumi.Input<List<DatabaseIdentityResponse>>? userAssignedIdentities;

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
      'userAssignedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseIdentityResponse>,
            List<Map<String, dynamic>>
          >(
            userAssignedIdentities,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseIdentityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      federatedClientId: (() {
        final guardedValue = map['federatedClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityType: (() {
        final guardedValue = map['identityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatabaseIdentityResponse>(
            guardedValue,
            (value) => DatabaseIdentityResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
