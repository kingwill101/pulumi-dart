// ignore_for_file: unused_element, unnecessary_cast


/// The encryption identity properties.
class EncryptionIdentityResponse {
  /// The principal identifier associated with the encryption.
  final String principalId;
  /// The tenant identifier associated with the encryption.
  final String tenantId;
  /// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  final String type;

  /// Creates a new [EncryptionIdentityResponse].
  /// [principalId] The principal identifier associated with the encryption.
  /// [tenantId] The tenant identifier associated with the encryption.
  /// [type] The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  EncryptionIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

