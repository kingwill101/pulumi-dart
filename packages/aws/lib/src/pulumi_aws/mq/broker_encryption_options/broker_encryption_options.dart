// ignore_for_file: unused_element, unnecessary_cast

class BrokerEncryptionOptions {
  /// ARN of KMS CMK to use for encryption at rest. Requires setting <span pulumi-lang-nodejs="`useAwsOwnedKey`" pulumi-lang-dotnet="`UseAwsOwnedKey`" pulumi-lang-go="`useAwsOwnedKey`" pulumi-lang-python="`use_aws_owned_key`" pulumi-lang-yaml="`useAwsOwnedKey`" pulumi-lang-java="`useAwsOwnedKey`">`use_aws_owned_key`</span> to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured.
  final String? kmsKeyId;

  /// Whether to enable an AWS-owned KMS CMK not in your account. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Setting to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> without configuring <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> creates an AWS-managed CMK aliased to `aws/mq` in your account.
  final bool? useAwsOwnedKey;

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
