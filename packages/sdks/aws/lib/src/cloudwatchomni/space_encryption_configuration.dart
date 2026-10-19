// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceEncryptionConfiguration {
  /// Encryption strategy. Valid values are `AWS_OWNED` and `CUSTOMER_MANAGED`.
  final pulumi.Input<String> encryptionStrategy;
  /// ARN of the KMS key to use. Required when `encryptionStrategy` is `CUSTOMER_MANAGED`.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [SpaceEncryptionConfiguration].
  /// [encryptionStrategy] Encryption strategy. Valid values are `AWS_OWNED` and `CUSTOMER_MANAGED`.
  /// [kmsKeyArn] ARN of the KMS key to use. Required when `encryptionStrategy` is `CUSTOMER_MANAGED`.
  const SpaceEncryptionConfiguration({
    required this.encryptionStrategy,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionStrategy': encryptionStrategy,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory SpaceEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return SpaceEncryptionConfiguration(
      encryptionStrategy: pulumi.Input.fromValue(map['encryptionStrategy'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
