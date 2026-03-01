// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationEncryptionConfiguration {
  /// ARN of the Amazon Web Services Key Management Service (KMS) customer managed key.
  final String keyId;

  /// Type of KMS key to use for encryption of your Network Firewall resources. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_KMS`.
  final String type;

  /// Creates a new [TlsInspectionConfigurationEncryptionConfiguration].
  /// [keyId] ARN of the Amazon Web Services Key Management Service (KMS) customer managed key.
  /// [type] Type of KMS key to use for encryption of your Network Firewall resources. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_KMS`.
  TlsInspectionConfigurationEncryptionConfiguration({
    required this.keyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyId': keyId, 'type': type};
  }

  factory TlsInspectionConfigurationEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return TlsInspectionConfigurationEncryptionConfiguration(
      keyId: map['keyId'] as String,
      type: map['type'] as String,
    );
  }
}
