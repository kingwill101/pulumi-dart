import 'package:pulumi/pulumi.dart';
import 'resource_policy_args8.dart';

/// Creates a new Amazon Redshift Resource Policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Resource Policies using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/resourcePolicy:ResourcePolicy example example
/// ```
class ResourcePolicy8 extends CustomResource {
  /// The content of the resource policy being updated.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the account to create or update a resource policy for.
  late final Output<String> resourceArn;

  ResourcePolicy8(
    String name, {
    ResourcePolicyArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
