// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PolicyAttachment.
class PolicyAttachmentArgs2 {
  /// The name of the policy to attach.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The identity to which the policy is attached.
  final Input<String> target;

  PolicyAttachmentArgs2({
    required this.policy,
    this.region,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['target'] = target;
    return map;
  }

  factory PolicyAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs2(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      target: Input.asInput<String>(map['target']),
    );
  }
}
