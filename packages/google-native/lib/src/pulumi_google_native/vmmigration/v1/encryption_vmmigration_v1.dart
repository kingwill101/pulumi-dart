// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionVmmigrationV1 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  EncryptionVmmigrationV1({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionVmmigrationV1.fromMap(Map<String, dynamic> map) {
    return EncryptionVmmigrationV1(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
