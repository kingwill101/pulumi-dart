// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionVmmigrationV1alpha1 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  /// Creates a new [EncryptionVmmigrationV1alpha1].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  EncryptionVmmigrationV1alpha1({required this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory EncryptionVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return EncryptionVmmigrationV1alpha1(kmsKey: map['kmsKey'] as String);
  }
}
