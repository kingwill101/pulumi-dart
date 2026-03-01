// ignore_for_file: unused_element, unnecessary_cast


/// A tag of the LegalHold of a blob container.
class TagPropertyResponse {
  /// Returns the Object ID of the user who added the tag.
  final String objectIdentifier;
  /// The tag value.
  final String tag;
  /// Returns the Tenant ID that issued the token for the user who added the tag.
  final String tenantId;
  /// Returns the date and time the tag was added.
  final String timestamp;
  /// Returns the User Principal Name of the user who added the tag.
  final String upn;

  /// Creates a new [TagPropertyResponse].
  /// [objectIdentifier] Returns the Object ID of the user who added the tag.
  /// [tag] The tag value.
  /// [tenantId] Returns the Tenant ID that issued the token for the user who added the tag.
  /// [timestamp] Returns the date and time the tag was added.
  /// [upn] Returns the User Principal Name of the user who added the tag.
  TagPropertyResponse({
    required this.objectIdentifier,
    required this.tag,
    required this.tenantId,
    required this.timestamp,
    required this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdentifier': objectIdentifier,
      'tag': tag,
      'tenantId': tenantId,
      'timestamp': timestamp,
      'upn': upn,
    };
  }

  factory TagPropertyResponse.fromMap(Map<String, dynamic> map) {
    return TagPropertyResponse(
      objectIdentifier: map['objectIdentifier'] as String,
      tag: map['tag'] as String,
      tenantId: map['tenantId'] as String,
      timestamp: map['timestamp'] as String,
      upn: map['upn'] as String,
    );
  }
}

