// ignore_for_file: unused_element, unnecessary_cast


class PoolDiskEncryption {
  /// On Linux pool, only \"TemporaryDisk\" is supported; on Windows pool, \"OsDisk\" and \"TemporaryDisk\" must be specified.
  final String diskEncryptionTarget;

  /// Creates a new [PoolDiskEncryption].
  /// [diskEncryptionTarget] On Linux pool, only \"TemporaryDisk\" is supported; on Windows pool, \"OsDisk\" and \"TemporaryDisk\" must be specified.
  PoolDiskEncryption({
    required this.diskEncryptionTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionTarget': diskEncryptionTarget,
    };
  }

  factory PoolDiskEncryption.fromMap(Map<String, dynamic> map) {
    return PoolDiskEncryption(
      diskEncryptionTarget: map['diskEncryptionTarget'] as String,
    );
  }
}

