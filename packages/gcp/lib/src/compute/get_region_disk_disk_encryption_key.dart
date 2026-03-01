// ignore_for_file: unused_element, unnecessary_cast

class GetRegionDiskDiskEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKeyName;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  final String rsaEncryptedKey;

  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final String sha256;

  /// Creates a new [GetRegionDiskDiskEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  GetRegionDiskDiskEncryptionKey({
    required this.kmsKeyName,
    required this.rawKey,
    required this.rsaEncryptedKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'rawKey': rawKey,
      'rsaEncryptedKey': rsaEncryptedKey,
      'sha256': sha256,
    };
  }

  factory GetRegionDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskDiskEncryptionKey(
      kmsKeyName: map['kmsKeyName'] as String,
      rawKey: map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] as String,
      sha256: map['sha256'] as String,
    );
  }
}
