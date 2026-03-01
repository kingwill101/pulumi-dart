// ignore_for_file: unused_element, unnecessary_cast

class MachineImageMachineImageEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String? kmsKeyName;

  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final String? kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String? rawKey;

  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the
  /// customer-supplied encryption key that protects this resource.
  final String? sha256;

  /// Creates a new [MachineImageMachineImageEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] (Output)
  MachineImageMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'sha256': ?sha256,
    };
  }

  factory MachineImageMachineImageEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return MachineImageMachineImageEncryptionKey(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
