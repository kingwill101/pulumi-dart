import 'package:pulumi/pulumi.dart';
import 'registry_policy_args2.dart';

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
class RegistryPolicy2 extends CustomResource {
  /// Resource Policy for EventBridge Schema Registry
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of EventBridge Schema Registry
  late final Output<String> registryName;

  RegistryPolicy2(
    String name, {
    RegistryPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:schemas/registryPolicy:RegistryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
  }
}
