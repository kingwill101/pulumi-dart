import 'package:pulumi/pulumi.dart';
import 'redrive_allow_policy_args.dart';

/// Provides a SQS Queue Redrive Allow Policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Redrive Allow Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/redriveAllowPolicy:RedriveAllowPolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class RedriveAllowPolicy extends CustomResource {
  /// The URL of the SQS Queue to which to attach the policy
  late final Output<String> queueUrl;

  /// The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  late final Output<String> redriveAllowPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RedriveAllowPolicy(
    String name, {
    RedriveAllowPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/redriveAllowPolicy:RedriveAllowPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.queueUrl = registerOutput<String>('queueUrl');
    this.redriveAllowPolicy = registerOutput<String>('redriveAllowPolicy');
    this.region = registerOutput<String>('region');
  }
}
