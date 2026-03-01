// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TopicPolicy resources.
class TopicPolicyState {
  /// The ARN of the SNS topic
  final pulumi.Input<String>? arn;
  /// The AWS Account ID of the SNS topic owner
  final pulumi.Input<String>? owner;
  /// The fully-formed AWS policy as JSON.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [TopicPolicyState].
  /// [arn] The ARN of the SNS topic
  /// [owner] The AWS Account ID of the SNS topic owner
  /// [policy] The fully-formed AWS policy as JSON.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  TopicPolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'owner': ?owner,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory TopicPolicyState.fromMap(Map<String, dynamic> map) {
    return TopicPolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

