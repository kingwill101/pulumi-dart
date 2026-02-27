// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyAttachment.
class PolicyAttachmentIotArgs {
  /// The name of the policy to attach.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The identity to which the policy is attached.
  final pulumi.Input<String> target;

  PolicyAttachmentIotArgs({
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

  factory PolicyAttachmentIotArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentIotArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      target: pulumi.Input.asInput<String>(map['target']),
    );
  }
}
