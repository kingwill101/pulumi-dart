// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';

/// Database Identity.
class Identity {
  /// The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  final pulumi.Input<String>? federatedClientId;
  /// Identity type of the main principal.
  final pulumi.Input<String>? identityType;
  /// User identity ids
  final pulumi.Input<List<DatabaseIdentity>>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [federatedClientId] The federated client id for the SQL Database. It is used for cross tenant CMK scenario.
  /// [identityType] Identity type of the main principal.
  /// [userAssignedIdentities] User identity ids
  const Identity({
    this.federatedClientId,
    this.identityType,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedClientId': ?federatedClientId,
      'identityType': ?identityType,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<List<DatabaseIdentity>, List<Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeList<DatabaseIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseIdentity>(guardedValue, (value) => DatabaseIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
