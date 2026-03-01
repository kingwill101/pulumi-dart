// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreTokenVaultCmkKmsConfiguration {
  /// Type of KMS key. Valid values: `CustomerManagedKey`, `ServiceManagedKey`.
  final String keyType;

  /// ARN of the KMS key.
  final String? kmsKeyArn;

  /// Creates a new [AgentcoreTokenVaultCmkKmsConfiguration].
  /// [keyType] Type of KMS key. Valid values: `CustomerManagedKey`, `ServiceManagedKey`.
  /// [kmsKeyArn] ARN of the KMS key.
  AgentcoreTokenVaultCmkKmsConfiguration({
    required this.keyType,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyType': keyType, 'kmsKeyArn': ?kmsKeyArn};
  }

  factory AgentcoreTokenVaultCmkKmsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreTokenVaultCmkKmsConfiguration(
      keyType: map['keyType'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
