// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RedrivePolicy resources.
class RedrivePolicyState {
  /// The URL of the SQS Queue to which to attach the policy
  final pulumi.Input<String?>? queueUrl;
  /// The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final pulumi.Input<String?>? redrivePolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [RedrivePolicyState].
  /// [queueUrl] The URL of the SQS Queue to which to attach the policy
  /// [redrivePolicy] The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const RedrivePolicyState({
    this.queueUrl,
    this.redrivePolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueUrl': ?queueUrl,
      'redrivePolicy': ?redrivePolicy,
      'region': ?region,
    };
  }

  factory RedrivePolicyState.fromMap(Map<String, dynamic> map) {
    return RedrivePolicyState(
      queueUrl: (() { final guardedValue = map['queueUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redrivePolicy: (() { final guardedValue = map['redrivePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
