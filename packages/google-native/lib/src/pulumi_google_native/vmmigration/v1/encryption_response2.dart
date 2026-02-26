// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionResponse2 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  EncryptionResponse2({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionResponse2.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse2(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
