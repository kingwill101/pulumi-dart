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
  Principals({
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
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      upn: map['upn'] == null ? null : (map['upn']! as String).input(),
    );
  }
}

