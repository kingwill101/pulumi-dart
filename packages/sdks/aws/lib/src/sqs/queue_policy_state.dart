// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueuePolicy resources.
class QueuePolicyState {
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  final pulumi.Input<String>? policy;
  /// URL of the SQS Queue to which to attach the policy.
  final pulumi.Input<String>? queueUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [QueuePolicyState].
  /// [policy] JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  /// [queueUrl] URL of the SQS Queue to which to attach the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  QueuePolicyState({
    pulumi.Output<String>? policy,
    pulumi.Output<String>? queueUrl,
    pulumi.Output<String>? region,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      queueUrl = pulumi.Input.asOptionalInput<String>(queueUrl),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'queueUrl': ?queueUrl,
      'region': ?region,
    };
  }

  factory QueuePolicyState.fromMap(Map<String, dynamic> map) {
    return QueuePolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      queueUrl: map['queueUrl'] == null ? null : pulumi.Output.create<String>(map['queueUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

