// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sns_topic_policy_topic_policy_args_doc}
/// The set of arguments for TopicPolicy.
/// {@endtemplate}
/// {@macro pulumi_sns_topic_policy_topic_policy_args_doc}
class TopicPolicyArgs {
  /// The ARN of the SNS topic
  final pulumi.Input<String> arn;

  /// The fully-formed AWS policy as JSON.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [TopicPolicyArgs].
  /// [arn] The ARN of the SNS topic
  /// [policy] The fully-formed AWS policy as JSON.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  TopicPolicyArgs({
    required String arn,
    required String policy,
    String? region,
  })  : arn = pulumi.Input.asInput<String>(arn),
        policy = pulumi.Input.asInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory TopicPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TopicPolicyArgs(
      arn: map['arn'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
