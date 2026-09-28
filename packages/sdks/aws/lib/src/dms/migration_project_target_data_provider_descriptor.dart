// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationProjectTargetDataProviderDescriptor {
  /// ARN of the data provider.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> dataProviderArn;
  /// Name of the target data provider.
  final pulumi.Input<String?>? dataProviderName;
  /// ARN of the IAM role used to access AWS Secrets Manager.
  final pulumi.Input<String?>? secretsManagerAccessRoleArn;
  /// Identifier of the Secrets Manager secret used to store access credentials for the data provider.
  final pulumi.Input<String?>? secretsManagerSecretId;

  /// Creates a new [MigrationProjectTargetDataProviderDescriptor].
  /// [dataProviderArn] ARN of the data provider.
  /// [dataProviderName] Name of the target data provider.
  /// [secretsManagerAccessRoleArn] ARN of the IAM role used to access AWS Secrets Manager.
  /// [secretsManagerSecretId] Identifier of the Secrets Manager secret used to store access credentials for the data provider.
  const MigrationProjectTargetDataProviderDescriptor({
    required this.dataProviderArn,
    this.dataProviderName,
    this.secretsManagerAccessRoleArn,
    this.secretsManagerSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProviderArn': dataProviderArn,
      'dataProviderName': ?dataProviderName,
      'secretsManagerAccessRoleArn': ?secretsManagerAccessRoleArn,
      'secretsManagerSecretId': ?secretsManagerSecretId,
    };
  }

  factory MigrationProjectTargetDataProviderDescriptor.fromMap(Map<String, dynamic> map) {
    return MigrationProjectTargetDataProviderDescriptor(
      dataProviderArn: pulumi.Input.fromValue(map['dataProviderArn'] as String),
      dataProviderName: (() { final guardedValue = map['dataProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerAccessRoleArn: (() { final guardedValue = map['secretsManagerAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerSecretId: (() { final guardedValue = map['secretsManagerSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
