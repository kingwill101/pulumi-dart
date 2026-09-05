// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerEncryptionOptions {
  /// ARN of KMS CMK to use for encryption at rest. Requires setting `useAwsOwnedKey` to `false`. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured.
  final pulumi.Input<String?>? kmsKeyId;
  /// Whether to enable an AWS-owned KMS CMK not in your account. Defaults to `true`. Setting to `false` without configuring `kmsKeyId` creates an AWS-managed CMK aliased to `aws/mq` in your account.
  final pulumi.Input<bool?>? useAwsOwnedKey;

  /// Creates a new [BrokerEncryptionOptions].
  /// [kmsKeyId] ARN of KMS CMK to use for encryption at rest. Requires setting `useAwsOwnedKey` to `false`. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured.
  /// [useAwsOwnedKey] Whether to enable an AWS-owned KMS CMK not in your account. Defaults to `true`. Setting to `false` without configuring `kmsKeyId` creates an AWS-managed CMK aliased to `aws/mq` in your account.
  const BrokerEncryptionOptions({
    this.kmsKeyId,
    this.useAwsOwnedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'useAwsOwnedKey': ?useAwsOwnedKey,
    };
  }

  factory BrokerEncryptionOptions.fromMap(Map<String, dynamic> map) {
    return BrokerEncryptionOptions(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useAwsOwnedKey: (() { final guardedValue = map['useAwsOwnedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
