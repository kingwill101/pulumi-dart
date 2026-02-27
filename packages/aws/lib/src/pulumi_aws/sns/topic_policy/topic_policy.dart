import 'package:pulumi/pulumi.dart';
import 'topic_policy_args.dart';

/// Provides an SNS topic policy resource
///
/// > **NOTE:** If a Principal is specified as just an AWS account ID rather than an ARN, AWS silently converts it to the ARN for the root user, causing future deployments to differ. To avoid this problem, just specify the full ARN, e.g. `arn:aws:iam::123456789012:root`
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Topic Policy using the topic ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topicPolicy:TopicPolicy user_updates arn:aws:sns:us-west-2:123456789012:my-topic
/// ```
class TopicPolicy extends CustomResource {
  /// The ARN of the SNS topic
  late final Output<String> arn;

  /// The AWS Account ID of the SNS topic owner
  late final Output<String> owner;

  /// The fully-formed AWS policy as JSON.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  TopicPolicy(
    String name, {
    TopicPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicPolicy:TopicPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.owner = registerOutput<String>('owner');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
