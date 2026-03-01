// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqs_queue_policy_queue_policy_args_doc}
/// The set of arguments for QueuePolicy.
/// {@endtemplate}
/// {@macro pulumi_sqs_queue_policy_queue_policy_args_doc}
class QueuePolicyArgs {
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  final pulumi.Input<String> policy;

  /// URL of the SQS Queue to which to attach the policy.
  final pulumi.Input<String> queueUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [QueuePolicyArgs].
  /// [policy] JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  /// [queueUrl] URL of the SQS Queue to which to attach the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  QueuePolicyArgs({
    required String policy,
    required String queueUrl,
    String? region,
  }) : policy = pulumi.Input.asInput<String>(policy),
       queueUrl = pulumi.Input.asInput<String>(queueUrl),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'queueUrl': queueUrl,
      'region': ?region,
    };
  }

  factory QueuePolicyArgs.fromMap(Map<String, dynamic> map) {
    return QueuePolicyArgs(
      policy: map['policy'] as String,
      queueUrl: map['queueUrl'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
