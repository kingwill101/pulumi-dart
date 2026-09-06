// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Info about origin if it is linked.
class LinkedInfoResponse {
  /// LinkedId id.
  final pulumi.Input<String?>? linkedId;
  /// Linked resource name.
  final pulumi.Input<String?>? linkedResourceName;
  /// Datastore origin
  final pulumi.Input<String?>? origin;

  /// Creates a new [LinkedInfoResponse].
  /// [linkedId] LinkedId id.
  /// [linkedResourceName] Linked resource name.
  /// [origin] Datastore origin
  const LinkedInfoResponse({
    this.linkedId,
    this.linkedResourceName,
    this.origin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedId': ?linkedId,
      'linkedResourceName': ?linkedResourceName,
      'origin': ?origin,
    };
  }

  factory LinkedInfoResponse.fromMap(Map<String, dynamic> map) {
    return LinkedInfoResponse(
      linkedId: (() { final guardedValue = map['linkedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedResourceName: (() { final guardedValue = map['linkedResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
