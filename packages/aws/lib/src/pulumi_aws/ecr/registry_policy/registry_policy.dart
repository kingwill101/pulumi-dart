import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_policy_args.dart';

/// Provides an Elastic Container Registry Policy.
///
/// > **NOTE on ECR Registry Policies:** While the AWS Management Console interface may suggest the ability to define multiple policies by creating multiple statements, ECR registry policies are effectively managed as singular entities at the regional level by the AWS APIs. Therefore, the `aws.ecr.RegistryPolicy` resource should be configured only once per region with all necessary statements defined in the same policy. Attempting to define multiple `aws.ecr.RegistryPolicy` resources may result in perpetual differences, with one policy overriding another.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Registry Policy using the registry id. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/registryPolicy:RegistryPolicy example 123456789012
/// ```
class RegistryPolicy extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the registry was created.
  late final pulumi.Output<String> registryId;

  RegistryPolicy(
    String name, {
    RegistryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/registryPolicy:RegistryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
  }
}
