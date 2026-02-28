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

  /// Creates a new [NodePoolLocalDiskEncryption].
  /// [kmsKey] The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
  /// [kmsKeyActiveVersion] (Output)
  /// [kmsKeyState] (Output)
  NodePoolLocalDiskEncryption({
    this.kmsKey,
    this.kmsKeyActiveVersion,
    this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'kmsKeyActiveVersion': ?kmsKeyActiveVersion,
      'kmsKeyState': ?kmsKeyState,
    };
  }

  factory NodePoolLocalDiskEncryption.fromMap(Map<String, dynamic> map) {
    return NodePoolLocalDiskEncryption(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      kmsKeyActiveVersion: map['kmsKeyActiveVersion'] == null ? null : map['kmsKeyActiveVersion'] as String,
      kmsKeyState: map['kmsKeyState'] == null ? null : map['kmsKeyState'] as String,
    );
  }
}

