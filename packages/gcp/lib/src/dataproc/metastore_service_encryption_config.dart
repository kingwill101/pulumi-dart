// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceEncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final String kmsKey;

  /// Creates a new [MetastoreServiceEncryptionConfig].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  MetastoreServiceEncryptionConfig({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory MetastoreServiceEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceEncryptionConfig(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
