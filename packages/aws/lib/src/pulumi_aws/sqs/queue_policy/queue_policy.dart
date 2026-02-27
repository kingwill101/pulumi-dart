import 'package:pulumi/pulumi.dart';
import 'queue_policy_args.dart';

/// Allows you to set a policy of an SQS Queue while referencing the ARN of the queue within the policy.
///
/// !> AWS will hang indefinitely when creating or updating an `aws.sqs.Queue` with an associated policy if `Version = "2012-10-17"` is not explicitly set in the policy. See below for an example of how to avoid this issue.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Timeout Problems Creating/Updating
///
/// If `Version = "2012-10-17"` is not explicitly set in the policy, AWS may hang, causing the AWS provider to time out. To avoid this, make sure to include `Version` as shown in the example below.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/queuePolicy:QueuePolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class QueuePolicy extends CustomResource {
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  late final Output<String> policy;

  /// URL of the SQS Queue to which to attach the policy.
  late final Output<String> queueUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  QueuePolicy(
    String name, {
    QueuePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/queuePolicy:QueuePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.queueUrl = registerOutput<String>('queueUrl');
    this.region = registerOutput<String>('region');
  }
}
