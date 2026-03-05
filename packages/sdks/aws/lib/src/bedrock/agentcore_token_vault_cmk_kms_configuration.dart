// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreTokenVaultCmkKmsConfiguration {
  /// Type of KMS key. Valid values: `CustomerManagedKey`, `ServiceManagedKey`.
  final pulumi.Input<String> keyType;
  /// ARN of the KMS key.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [AgentcoreTokenVaultCmkKmsConfiguration].
  /// [keyType] Type of KMS key. Valid values: `CustomerManagedKey`, `ServiceManagedKey`.
  /// [kmsKeyArn] ARN of the KMS key.
  AgentcoreTokenVaultCmkKmsConfiguration({
    required this.keyType,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': keyType,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory AgentcoreTokenVaultCmkKmsConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreTokenVaultCmkKmsConfiguration(
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

