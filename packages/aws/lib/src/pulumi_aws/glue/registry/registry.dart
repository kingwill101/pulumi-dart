import 'package:pulumi/pulumi.dart';
import 'registry_args.dart';

/// Provides a Glue Registry resource.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Glue registry.
///
///
/// Using `pulumi import`, import Glue Registries using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/registry:Registry example arn:aws:glue:us-west-2:123456789012:registry/example
/// ```
class Registry extends CustomResource {
  /// Amazon Resource Name (ARN) of Glue Registry.
  late final Output<String> arn;

  /// A description of the registry.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Name of the registry.
  late final Output<String> registryName;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Registry(
    String name, {
    RegistryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/registry:Registry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
