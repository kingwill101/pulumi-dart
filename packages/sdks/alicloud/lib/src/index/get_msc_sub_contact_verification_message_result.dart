// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getMscSubContactVerificationMessage.
class GetMscSubContactVerificationMessageResult {
  final String contactId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The sending status of the message. Valid values : `Success`, `Failed`.
  final String status;
  final int type;

  /// Creates a new [GetMscSubContactVerificationMessageResult].
  /// [contactId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The sending status of the message. Valid values : `Success`, `Failed`.
  /// [type] Required.
  GetMscSubContactVerificationMessageResult({
    required this.contactId,
    required this.id,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'id': id,
      'status': status,
      'type': type,
    };
  }

  factory GetMscSubContactVerificationMessageResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMscSubContactVerificationMessageResult(
      contactId: map['contactId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      type: map['type'] as int,
    );
  }
}
