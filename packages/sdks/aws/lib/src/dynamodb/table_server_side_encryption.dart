// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableServerSideEncryption {
  /// Whether or not to enable encryption at rest using an AWS managed KMS customer master key (CMK). If `enabled` is `false` then server-side encryption is set to AWS-_owned_ key (shown as `DEFAULT` in the AWS console). Potentially confusingly, if `enabled` is `true` and no `kms_key_arn` is specified then server-side encryption is set to the _default_ KMS-_managed_ key (shown as `KMS` in the AWS console). The [AWS KMS documentation](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html) explains the difference between AWS-_owned_ and KMS-_managed_ keys.
  final pulumi.Input<bool> enabled;

  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [TableServerSideEncryption].
  /// [enabled] Whether or not to enable encryption at rest using an AWS managed KMS customer master key (CMK). If `enabled` is `false` then server-side encryption is set to AWS-_owned_ key (shown as `DEFAULT` in the AWS console). Potentially confusingly, if `enabled` is `true` and no `kms_key_arn` is specified then server-side encryption is set to the _default_ KMS-_managed_ key (shown as `KMS` in the AWS console). The [AWS KMS documentation](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html) explains the difference between AWS-_owned_ and KMS-_managed_ keys.
  /// [kmsKeyArn] ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  TableServerSideEncryption({required this.enabled, this.kmsKeyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'kmsKeyArn': ?kmsKeyArn};
  }

  factory TableServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return TableServerSideEncryption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
