// ignore_for_file: unused_element, unnecessary_cast


class StateMachineEncryptionConfiguration {
  /// Maximum duration for which Step Functions will reuse data keys. When the period expires, Step Functions will call GenerateDataKey. This setting only applies to customer managed KMS key and does not apply when `type` is `AWS_OWNED_KEY`.
  final int? kmsDataKeyReusePeriodSeconds;
  /// The alias, alias ARN, key ID, or key ARN of the symmetric encryption KMS key that encrypts the data key. To specify a KMS key in a different AWS account, the customer must use the key ARN or alias ARN. For more information regarding kms_key_id, see [KeyId](https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters) in the KMS documentation.
  final String? kmsKeyId;
  /// The encryption option specified for the state machine. Valid values: `AWS_OWNED_KEY`, `CUSTOMER_MANAGED_KMS_KEY`
  final String? type;

  /// Creates a new [StateMachineEncryptionConfiguration].
  /// [kmsDataKeyReusePeriodSeconds] Maximum duration for which Step Functions will reuse data keys. When the period expires, Step Functions will call GenerateDataKey. This setting only applies to customer managed KMS key and does not apply when `type` is `AWS_OWNED_KEY`.
  /// [kmsKeyId] The alias, alias ARN, key ID, or key ARN of the symmetric encryption KMS key that encrypts the data key. To specify a KMS key in a different AWS account, the customer must use the key ARN or alias ARN. For more information regarding kms_key_id, see [KeyId](https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters) in the KMS documentation.
  /// [type] The encryption option specified for the state machine. Valid values: `AWS_OWNED_KEY`, `CUSTOMER_MANAGED_KMS_KEY`
  StateMachineEncryptionConfiguration({
    this.kmsDataKeyReusePeriodSeconds,
    this.kmsKeyId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsDataKeyReusePeriodSeconds': ?kmsDataKeyReusePeriodSeconds,
      'kmsKeyId': ?kmsKeyId,
      'type': ?type,
    };
  }

  factory StateMachineEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return StateMachineEncryptionConfiguration(
      kmsDataKeyReusePeriodSeconds: map['kmsDataKeyReusePeriodSeconds'] == null ? null : map['kmsDataKeyReusePeriodSeconds'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

