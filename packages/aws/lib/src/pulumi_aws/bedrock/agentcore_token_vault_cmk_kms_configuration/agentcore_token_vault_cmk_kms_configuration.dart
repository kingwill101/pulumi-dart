// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreTokenVaultCmkKmsConfiguration {
  /// Type of KMS key. Valid values: `CustomerManagedKey`, `ServiceManagedKey`.
  final String keyType;

  /// ARN of the KMS key.
  final String? kmsKeyArn;

  AgentcoreTokenVaultCmkKmsConfiguration({
    required this.keyType,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyType'] = keyType;
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
  }

  factory AgentcoreTokenVaultCmkKmsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreTokenVaultCmkKmsConfiguration(
      keyType: map['keyType'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
