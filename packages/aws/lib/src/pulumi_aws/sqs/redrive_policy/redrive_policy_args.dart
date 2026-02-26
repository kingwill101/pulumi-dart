// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RedrivePolicy.
class RedrivePolicyArgs {
  /// The URL of the SQS Queue to which to attach the policy
  final Input<String> queueUrl;

  /// The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  final Input<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RedrivePolicyArgs({
    required this.queueUrl,
    required this.redrivePolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queueUrl'] = queueUrl;
    map['redrivePolicy'] = redrivePolicy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RedrivePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RedrivePolicyArgs(
      queueUrl: Input.asInput<String>(map['queueUrl']),
      redrivePolicy: Input.asInput<String>(map['redrivePolicy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
