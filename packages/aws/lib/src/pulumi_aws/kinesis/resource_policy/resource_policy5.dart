import 'package:pulumi/pulumi.dart';
import 'resource_policy_args5.dart';

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
class ResourcePolicy5 extends CustomResource {
  /// The policy document.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the data stream or consumer.
  late final Output<String> resourceArn;

  ResourcePolicy5(
    String name, {
    ResourcePolicyArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
