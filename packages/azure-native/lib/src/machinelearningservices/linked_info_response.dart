// ignore_for_file: unused_element, unnecessary_cast


/// Info about origin if it is linked.
class LinkedInfoResponse {
  /// LinkedId id.
  final String? linkedId;
  /// Linked resource name.
  final String? linkedResourceName;
  /// Datastore origin
  final String? origin;

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
      linkedId: map['linkedId'] == null ? null : map['linkedId'] as String,
      linkedResourceName: map['linkedResourceName'] == null ? null : map['linkedResourceName'] as String,
      origin: map['origin'] == null ? null : map['origin'] as String,
    );
  }
}

