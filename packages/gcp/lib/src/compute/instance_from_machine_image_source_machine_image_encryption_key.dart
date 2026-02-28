// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageSourceMachineImageEncryptionKey {
  final String? kmsKeyName;
  final String? kmsKeyServiceAccount;
  final String? rawKey;
  final String? rsaEncryptedKey;
  final String? sha256;

  /// Creates a new [InstanceFromMachineImageSourceMachineImageEncryptionKey].
  /// [kmsKeyName] Optional.
  /// [kmsKeyServiceAccount] Optional.
  /// [rawKey] Optional.
  /// [rsaEncryptedKey] Optional.
  /// [sha256] Optional.
  InstanceFromMachineImageSourceMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
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
    final rsaEncryptedKeyValue = rsaEncryptedKey;
    if (rsaEncryptedKeyValue != null) {
      map['rsaEncryptedKey'] = rsaEncryptedKeyValue;
    }
    final sha256Value = sha256;
    if (sha256Value != null) {
      map['sha256'] = sha256Value;
    }
    return map;
  }

  factory InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageSourceMachineImageEncryptionKey(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null
          ? null
          : map['rsaEncryptedKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
