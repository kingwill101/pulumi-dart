// ignore_for_file: unused_element, unnecessary_cast

class ServiceEncryptionConfiguration {
  /// ARN of the KMS key used for encryption.
  final String kmsKey;

  /// Creates a new [ServiceEncryptionConfiguration].
  /// [kmsKey] ARN of the KMS key used for encryption.
  ServiceEncryptionConfiguration({required this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory ServiceEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceEncryptionConfiguration(kmsKey: map['kmsKey'] as String);
  }
}
