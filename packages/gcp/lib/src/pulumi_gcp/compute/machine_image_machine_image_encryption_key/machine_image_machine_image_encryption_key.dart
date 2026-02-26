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

  MachineImageMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final kmsKeyServiceAccountValue = kmsKeyServiceAccount;
    if (kmsKeyServiceAccountValue != null) {
      map['kmsKeyServiceAccount'] = kmsKeyServiceAccountValue;
    }
    final rawKeyValue = rawKey;
    if (rawKeyValue != null) {
      map['rawKey'] = rawKeyValue;
    }
    final sha256Value = sha256;
    if (sha256Value != null) {
      map['sha256'] = sha256Value;
    }
    return map;
  }

  factory MachineImageMachineImageEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return MachineImageMachineImageEncryptionKey(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
