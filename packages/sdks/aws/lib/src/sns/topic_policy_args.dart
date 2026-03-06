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
  const TopicPolicyArgs({
    required this.arn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'policy': policy,
      'region': ?region,
    };
  }

  factory TopicPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TopicPolicyArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

