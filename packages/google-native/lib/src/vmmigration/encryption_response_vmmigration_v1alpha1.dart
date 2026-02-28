// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class EncryptionResponseVmmigrationV1alpha1 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  /// Creates a new [EncryptionResponseVmmigrationV1alpha1].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  EncryptionResponseVmmigrationV1alpha1({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionResponseVmmigrationV1alpha1(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
