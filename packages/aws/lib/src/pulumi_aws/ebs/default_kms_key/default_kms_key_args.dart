// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultKmsKey.
class DefaultKmsKeyArgs {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  final Input<String> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DefaultKmsKeyArgs({
    required this.keyArn,
    this.region,
  });

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
      keyArn: Input.asInput<String>(map['keyArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
