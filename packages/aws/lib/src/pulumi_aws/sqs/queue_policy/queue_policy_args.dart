// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for QueuePolicy.
class QueuePolicyArgs {
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  final pulumi.Input<String> policy;

  /// URL of the SQS Queue to which to attach the policy.
  final pulumi.Input<String> queueUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  QueuePolicyArgs({
    required this.policy,
    required this.queueUrl,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    map['queueUrl'] = queueUrl;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory QueuePolicyArgs.fromMap(Map<String, dynamic> map) {
    return QueuePolicyArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      queueUrl: pulumi.Input.asInput<String>(map['queueUrl']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
