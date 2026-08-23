// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User principals.
class Principals {
  /// Object Id for the user
  final pulumi.Input<String>? objectId;
  /// UPN of the user.
  final pulumi.Input<String>? upn;

  /// Creates a new [Principals].
  /// [objectId] Object Id for the user
  /// [upn] UPN of the user.
  const Principals({
    this.objectId,
    this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'upn': ?upn,
    };
  }

  factory Principals.fromMap(Map<String, dynamic> map) {
    return Principals(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upn: (() { final guardedValue = map['upn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
