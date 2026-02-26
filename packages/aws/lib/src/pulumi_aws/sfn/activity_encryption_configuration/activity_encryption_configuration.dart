// ignore_for_file: unused_element, unnecessary_cast

class ActivityEncryptionConfiguration {
  /// Maximum duration for which Activities will reuse data keys. When the period expires, Activities will call GenerateDataKey. This setting only applies to customer managed KMS key and does not apply to AWS owned KMS key.
  final int? kmsDataKeyReusePeriodSeconds;

  /// The alias, alias ARN, key ID, or key ARN of the symmetric encryption KMS key that encrypts the data key. To specify a KMS key in a different AWS account, the customer must use the key ARN or alias ARN. For more information regarding kms_key_id, see [KeyId](https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters) in the KMS documentation.
  final String? kmsKeyId;

  /// The encryption option specified for the activity. Valid values: `AWS_KMS_KEY`, `CUSTOMER_MANAGED_KMS_KEY`
  final String? type;

  ActivityEncryptionConfiguration({
    this.kmsDataKeyReusePeriodSeconds,
    this.kmsKeyId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsDataKeyReusePeriodSecondsValue = kmsDataKeyReusePeriodSeconds;
    if (kmsDataKeyReusePeriodSecondsValue != null) {
      map['kmsDataKeyReusePeriodSeconds'] = kmsDataKeyReusePeriodSecondsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ActivityEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ActivityEncryptionConfiguration(
      kmsDataKeyReusePeriodSeconds: map['kmsDataKeyReusePeriodSeconds'] == null
          ? null
          : map['kmsDataKeyReusePeriodSeconds'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
