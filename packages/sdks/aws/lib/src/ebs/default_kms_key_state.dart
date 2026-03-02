// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultKmsKey resources.
class DefaultKmsKeyState {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  final pulumi.Input<String>? keyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DefaultKmsKeyState].
  /// [keyArn] The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DefaultKmsKeyState({
    this.keyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyArn': ?keyArn,
      'region': ?region,
    };
  }

  factory DefaultKmsKeyState.fromMap(Map<String, dynamic> map) {
    return DefaultKmsKeyState(
      keyArn: map['keyArn'] == null ? null : ((map['keyArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

