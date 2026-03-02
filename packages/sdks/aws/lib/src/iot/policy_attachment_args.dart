// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_policy_attachment_policy_attachment_args_doc}
/// The set of arguments for PolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_iot_policy_attachment_policy_attachment_args_doc}
class PolicyAttachmentArgs {
  /// The name of the policy to attach.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identity to which the policy is attached.
  final pulumi.Input<String> target;

  /// Creates a new [PolicyAttachmentArgs].
  /// [policy] The name of the policy to attach.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] The identity to which the policy is attached.
  PolicyAttachmentArgs({
    required this.policy,
    this.region,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'target': target,
    };
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      target: (map['target'] as String).input(),
    );
  }
}

