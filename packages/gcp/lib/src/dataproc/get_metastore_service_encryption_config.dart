// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceEncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  /// Use the following format: 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)'
  final String kmsKey;

  /// Creates a new [GetMetastoreServiceEncryptionConfig].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  GetMetastoreServiceEncryptionConfig({required this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory GetMetastoreServiceEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetastoreServiceEncryptionConfig(kmsKey: map['kmsKey'] as String);
  }
}
