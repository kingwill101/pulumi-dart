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
    required this.keyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyArn': keyArn,
      'region': ?region,
    };
  }

  factory DefaultKmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return DefaultKmsKeyArgs(
      keyArn: pulumi.Input.fromValue(map['keyArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

