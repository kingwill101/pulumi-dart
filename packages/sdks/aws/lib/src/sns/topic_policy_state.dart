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
    this.arn,
    this.owner,
    this.policy,
    this.region,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      owner: map['owner'] == null ? null : ((map['owner'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

