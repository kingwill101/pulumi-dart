// ignore_for_file: unused_element, unnecessary_cast

class NodePoolLocalDiskEncryption {
  /// The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
  /// If not specified, a Google-managed key will be used instead.
  final String? kmsKey;

  /// (Output)
  /// The Cloud KMS CryptoKeyVersion currently in use for protecting node local disks. Only applicable if kmsKey is set.
  final String? kmsKeyActiveVersion;

  /// (Output)
  /// Availability of the Cloud KMS CryptoKey. If not KEY_AVAILABLE, then nodes may go offline as they cannot access their local data.
  /// This can be caused by a lack of permissions to use the key, or if the key is disabled or deleted.
  final String? kmsKeyState;

  NodePoolLocalDiskEncryption({
    this.kmsKey,
    this.kmsKeyActiveVersion,
    this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final kmsKeyActiveVersionValue = kmsKeyActiveVersion;
    if (kmsKeyActiveVersionValue != null) {
      map['kmsKeyActiveVersion'] = kmsKeyActiveVersionValue;
    }
    final kmsKeyStateValue = kmsKeyState;
    if (kmsKeyStateValue != null) {
      map['kmsKeyState'] = kmsKeyStateValue;
    }
    return map;
  }

  factory NodePoolLocalDiskEncryption.fromMap(Map<String, dynamic> map) {
    return NodePoolLocalDiskEncryption(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      kmsKeyActiveVersion: map['kmsKeyActiveVersion'] == null
          ? null
          : map['kmsKeyActiveVersion'] as String,
      kmsKeyState:
          map['kmsKeyState'] == null ? null : map['kmsKeyState'] as String,
    );
  }
}
