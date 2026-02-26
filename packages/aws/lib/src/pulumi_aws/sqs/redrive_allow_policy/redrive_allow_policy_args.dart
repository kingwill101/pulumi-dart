// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RedriveAllowPolicy.
class RedriveAllowPolicyArgs {
  /// The URL of the SQS Queue to which to attach the policy
  final Input<String> queueUrl;

  /// The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final Input<String> redriveAllowPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RedriveAllowPolicyArgs({
    required this.queueUrl,
    required this.redriveAllowPolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queueUrl'] = queueUrl;
    map['redriveAllowPolicy'] = redriveAllowPolicy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RedriveAllowPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RedriveAllowPolicyArgs(
      queueUrl: Input.asInput<String>(map['queueUrl']),
      redriveAllowPolicy: Input.asInput<String>(map['redriveAllowPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
