// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionResponse {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  /// Creates a new [EncryptionResponse].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  EncryptionResponse({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
