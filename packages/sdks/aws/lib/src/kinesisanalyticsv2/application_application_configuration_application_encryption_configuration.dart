// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationApplicationEncryptionConfiguration {
  /// The ARN of the KMS key to use for encryption. Required when `key_type` is set to `CUSTOMER_MANAGED_KEY`. The KMS key must be in the same region as the application.
  final String? keyId;
  /// The type of encryption key to use. Valid values: `CUSTOMER_MANAGED_KEY`, `AWS_OWNED_KEY`.
  final String keyType;

  /// Creates a new [ApplicationApplicationConfigurationApplicationEncryptionConfiguration].
  /// [keyId] The ARN of the KMS key to use for encryption. Required when `key_type` is set to `CUSTOMER_MANAGED_KEY`. The KMS key must be in the same region as the application.
  /// [keyType] The type of encryption key to use. Valid values: `CUSTOMER_MANAGED_KEY`, `AWS_OWNED_KEY`.
  ApplicationApplicationConfigurationApplicationEncryptionConfiguration({
    this.keyId,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'keyType': keyType,
    };
  }

  factory ApplicationApplicationConfigurationApplicationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationEncryptionConfiguration(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      keyType: map['keyType'] as String,
    );
  }
}

