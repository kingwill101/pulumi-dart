// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RedriveAllowPolicy resources.
class RedriveAllowPolicyState {
  /// The URL of the SQS Queue to which to attach the policy
  final pulumi.Input<String>? queueUrl;
  /// The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final pulumi.Input<String>? redriveAllowPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RedriveAllowPolicyState].
  /// [queueUrl] The URL of the SQS Queue to which to attach the policy
  /// [redriveAllowPolicy] The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const RedriveAllowPolicyState({
    this.queueUrl,
    this.redriveAllowPolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueUrl': ?queueUrl,
      'redriveAllowPolicy': ?redriveAllowPolicy,
      'region': ?region,
    };
  }

  factory RedriveAllowPolicyState.fromMap(Map<String, dynamic> map) {
    return RedriveAllowPolicyState(
      queueUrl: (() { final guardedValue = map['queueUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redriveAllowPolicy: (() { final guardedValue = map['redriveAllowPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

