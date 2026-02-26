// ignore_for_file: unused_element, unnecessary_cast

class TableServerSideEncryption {
  /// Whether or not to enable encryption at rest using an AWS managed KMS customer master key (CMK). If <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> then server-side encryption is set to AWS-_owned_ key (shown as `DEFAULT` in the AWS console). Potentially confusingly, if <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and no <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span> is specified then server-side encryption is set to the _default_ KMS-_managed_ key (shown as `KMS` in the AWS console). The [AWS KMS documentation](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html) explains the difference between AWS-_owned_ and KMS-_managed_ keys.
  final bool enabled;

  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  final String? kmsKeyArn;

  TableServerSideEncryption({
    required this.enabled,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
  }

  factory TableServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return TableServerSideEncryption(
      enabled: map['enabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
