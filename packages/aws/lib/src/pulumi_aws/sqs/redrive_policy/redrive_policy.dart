import 'package:pulumi/pulumi.dart';
import 'redrive_policy_args.dart';

/// Allows you to set a redrive policy of an SQS Queue
/// while referencing ARN of the dead letter queue inside the redrive policy.
///
/// This is useful when you want to set a dedicated
/// dead letter queue for a standard or FIFO queue, but need
/// the dead letter queue to exist before setting the redrive policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Redrive Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/redrivePolicy:RedrivePolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class RedrivePolicy extends CustomResource {
  /// The URL of the SQS Queue to which to attach the policy
  late final Output<String> queueUrl;

  /// The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  late final Output<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RedrivePolicy(
    String name, {
    RedrivePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/redrivePolicy:RedrivePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.queueUrl = registerOutput<String>('queueUrl');
    this.redrivePolicy = registerOutput<String>('redrivePolicy');
    this.region = registerOutput<String>('region');
  }
}
