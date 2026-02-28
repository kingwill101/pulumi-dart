// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_default_kms_key_default_kms_key_args_doc}
/// The set of arguments for DefaultKmsKey.
/// {@endtemplate}
/// {@macro pulumi_ebs_default_kms_key_default_kms_key_args_doc}
class DefaultKmsKeyArgs {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  final pulumi.Input<String> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DefaultKmsKeyArgs].
  /// [keyArn] The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DefaultKmsKeyArgs({
    required String keyArn,
    String? region,
  })  : keyArn = pulumi.Input.asInput<String>(keyArn),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyArn'] = keyArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DefaultKmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return DefaultKmsKeyArgs(
      keyArn: map['keyArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
