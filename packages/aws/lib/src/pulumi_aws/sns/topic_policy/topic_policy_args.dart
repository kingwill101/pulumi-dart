// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TopicPolicy.
class TopicPolicyArgs {
  /// The ARN of the SNS topic
  final pulumi.Input<String> arn;

  /// The fully-formed AWS policy as JSON.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  TopicPolicyArgs({
    required this.arn,
    required this.policy,
    this.region,
  });

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
      arn: pulumi.Input.asInput<String>(map['arn']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
