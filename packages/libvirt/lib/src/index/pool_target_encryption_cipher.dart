// ignore_for_file: unused_element, unnecessary_cast


class PoolTargetEncryptionCipher {
  /// Specifies the hash algorithm used with the encryption cipher.
  final String hash;
  /// Defines the mode for the encryption cipher of the storage volume.
  final String mode;
  /// Sets the name of the encryption cipher for the storage volume.
  final String name;
  /// Sets the size of the encryption cipher for the storage volume.
  final double size;

  /// Creates a new [PoolTargetEncryptionCipher].
  /// [hash] Specifies the hash algorithm used with the encryption cipher.
  /// [mode] Defines the mode for the encryption cipher of the storage volume.
  /// [name] Sets the name of the encryption cipher for the storage volume.
  /// [size] Sets the size of the encryption cipher for the storage volume.
  PoolTargetEncryptionCipher({
    required this.hash,
    required this.mode,
    required this.name,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'mode': mode,
      'name': name,
      'size': size,
    };
  }

  factory PoolTargetEncryptionCipher.fromMap(Map<String, dynamic> map) {
    return PoolTargetEncryptionCipher(
      hash: map['hash'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      size: map['size'] as double,
    );
  }
}

