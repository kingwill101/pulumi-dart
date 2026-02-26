// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionResponse3 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  EncryptionResponse3({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionResponse3.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse3(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
