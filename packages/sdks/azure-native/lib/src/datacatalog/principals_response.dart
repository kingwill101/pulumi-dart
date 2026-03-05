// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User principals.
class PrincipalsResponse {
  /// Object Id for the user
  final pulumi.Input<String>? objectId;
  /// UPN of the user.
  final pulumi.Input<String>? upn;

  /// Creates a new [PrincipalsResponse].
  /// [objectId] Object Id for the user
  /// [upn] UPN of the user.
  PrincipalsResponse({
    this.objectId,
    this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'upn': ?upn,
    };
  }

  factory PrincipalsResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalsResponse(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upn: (() { final guardedValue = map['upn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

