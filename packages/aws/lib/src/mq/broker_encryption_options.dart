// ignore_for_file: unused_element, unnecessary_cast

class BrokerEncryptionOptions {
  /// ARN of KMS CMK to use for encryption at rest. Requires setting `use_aws_owned_key` to `false`. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured.
  final String? kmsKeyId;

  /// Whether to enable an AWS-owned KMS CMK not in your account. Defaults to `true`. Setting to `false` without configuring `kms_key_id` creates an AWS-managed CMK aliased to `aws/mq` in your account.
  final bool? useAwsOwnedKey;

  /// Creates a new [BrokerEncryptionOptions].
  /// [kmsKeyId] ARN of KMS CMK to use for encryption at rest. Requires setting `use_aws_owned_key` to `false`. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured.
  /// [useAwsOwnedKey] Whether to enable an AWS-owned KMS CMK not in your account. Defaults to `true`. Setting to `false` without configuring `kms_key_id` creates an AWS-managed CMK aliased to `aws/mq` in your account.
  BrokerEncryptionOptions({
    this.kmsKeyId,
    this.useAwsOwnedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final useAwsOwnedKeyValue = useAwsOwnedKey;
    if (useAwsOwnedKeyValue != null) {
      map['useAwsOwnedKey'] = useAwsOwnedKeyValue;
    }
    return map;
  }

  factory BrokerEncryptionOptions.fromMap(Map<String, dynamic> map) {
    return BrokerEncryptionOptions(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      useAwsOwnedKey:
          map['useAwsOwnedKey'] == null ? null : map['useAwsOwnedKey'] as bool,
    );
  }
}
