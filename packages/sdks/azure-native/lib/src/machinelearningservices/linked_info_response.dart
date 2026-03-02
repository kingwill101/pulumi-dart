// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Info about origin if it is linked.
class LinkedInfoResponse {
  /// LinkedId id.
  final pulumi.Input<String>? linkedId;
  /// Linked resource name.
  final pulumi.Input<String>? linkedResourceName;
  /// Datastore origin
  final pulumi.Input<String>? origin;

  /// Creates a new [LinkedInfoResponse].
  /// [linkedId] LinkedId id.
  /// [linkedResourceName] Linked resource name.
  /// [origin] Datastore origin
  LinkedInfoResponse({
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
      linkedId: map['linkedId'] == null ? null : (map['linkedId'] as String).input(),
      linkedResourceName: map['linkedResourceName'] == null ? null : (map['linkedResourceName'] as String).input(),
      origin: map['origin'] == null ? null : (map['origin'] as String).input(),
    );
  }
}

