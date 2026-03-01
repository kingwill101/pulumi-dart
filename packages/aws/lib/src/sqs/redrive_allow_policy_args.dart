// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqs_redrive_allow_policy_redrive_allow_policy_args_doc}
/// The set of arguments for RedriveAllowPolicy.
/// {@endtemplate}
/// {@macro pulumi_sqs_redrive_allow_policy_redrive_allow_policy_args_doc}
class RedriveAllowPolicyArgs {
  /// The URL of the SQS Queue to which to attach the policy
  final pulumi.Input<String> queueUrl;

  /// The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final pulumi.Input<String> redriveAllowPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RedriveAllowPolicyArgs].
  /// [queueUrl] The URL of the SQS Queue to which to attach the policy
  /// [redriveAllowPolicy] The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RedriveAllowPolicyArgs({
    required String queueUrl,
    required String redriveAllowPolicy,
    String? region,
  }) : queueUrl = pulumi.Input.asInput<String>(queueUrl),
       redriveAllowPolicy = pulumi.Input.asInput<String>(redriveAllowPolicy),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueUrl': queueUrl,
      'redriveAllowPolicy': redriveAllowPolicy,
      'region': ?region,
    };
  }

  factory RedriveAllowPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RedriveAllowPolicyArgs(
      queueUrl: map['queueUrl'] as String,
      redriveAllowPolicy: map['redriveAllowPolicy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
