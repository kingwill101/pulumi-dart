import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_kinesis_args.dart';

/// Provides a resource to manage an Amazon Kinesis Streams resource policy.
/// Use a resource policy to manage cross-account access to your data streams or consumers.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Kinesis stream.
///
///
/// Using `pulumi import`, import Kinesis resource policies using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/resourcePolicy:ResourcePolicy example arn:aws:kinesis:us-west-2:123456789012:stream/example
/// ```
class ResourcePolicyKinesis extends pulumi.CustomResource {
  /// The policy document.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the data stream or consumer.
  late final pulumi.Output<String> resourceArn;

  ResourcePolicyKinesis(
    String name, {
    ResourcePolicyKinesisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
