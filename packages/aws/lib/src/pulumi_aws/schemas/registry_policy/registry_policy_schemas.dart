import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_policy_schemas_args.dart';

/// Resource for managing an AWS EventBridge Schemas Registry Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge Schema Registry Policy using the `registry_name`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/registryPolicy:RegistryPolicy example example
/// ```
class RegistryPolicySchemas extends pulumi.CustomResource {
  /// Resource Policy for EventBridge Schema Registry
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of EventBridge Schema Registry
  late final pulumi.Output<String> registryName;

  RegistryPolicySchemas(
    String name, {
    RegistryPolicySchemasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/registryPolicy:RegistryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
  }
}
