// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RedrivePolicy resources.
class RedrivePolicyState {
  /// The URL of the SQS Queue to which to attach the policy
  final pulumi.Input<String>? queueUrl;
  /// The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final pulumi.Input<String>? redrivePolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RedrivePolicyState].
  /// [queueUrl] The URL of the SQS Queue to which to attach the policy
  /// [redrivePolicy] The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RedrivePolicyState({
    pulumi.Output<String>? queueUrl,
    pulumi.Output<String>? redrivePolicy,
    pulumi.Output<String>? region,
  }) :
      queueUrl = pulumi.Input.asOptionalInput<String>(queueUrl),
      redrivePolicy = pulumi.Input.asOptionalInput<String>(redrivePolicy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueUrl': ?queueUrl,
      'redrivePolicy': ?redrivePolicy,
      'region': ?region,
    };
  }

  factory RedrivePolicyState.fromMap(Map<String, dynamic> map) {
    return RedrivePolicyState(
      queueUrl: map['queueUrl'] == null ? null : pulumi.Output.create<String>(map['queueUrl'] as String),
      redrivePolicy: map['redrivePolicy'] == null ? null : pulumi.Output.create<String>(map['redrivePolicy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

