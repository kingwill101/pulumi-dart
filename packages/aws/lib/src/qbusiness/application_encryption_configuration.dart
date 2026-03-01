// ignore_for_file: unused_element, unnecessary_cast

class ApplicationEncryptionConfiguration {
  /// Identifier of the AWS KMS key that is used to encrypt your data. Amazon Q doesn't support asymmetric keys.
  final String kmsKeyId;

  /// Creates a new [ApplicationEncryptionConfiguration].
  /// [kmsKeyId] Identifier of the AWS KMS key that is used to encrypt your data. Amazon Q doesn't support asymmetric keys.
  ApplicationEncryptionConfiguration({required this.kmsKeyId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyId': kmsKeyId};
  }

  factory ApplicationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationEncryptionConfiguration(
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
