// ignore_for_file: unused_element, unnecessary_cast


/// Azure Key Vault reference.
class KeyVaultReferenceResponse {
  /// Azure Key Vault resourceId.
  final String id;

  /// Creates a new [KeyVaultReferenceResponse].
  /// [id] Azure Key Vault resourceId.
  KeyVaultReferenceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory KeyVaultReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultReferenceResponse(
      id: map['id'] as String,
    );
  }
}

