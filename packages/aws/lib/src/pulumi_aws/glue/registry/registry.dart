import 'package:pulumi/pulumi.dart' as pulumi;
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
class Registry extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue Registry.
  late final pulumi.Output<String> arn;

  /// A description of the registry.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Name of the registry.
  late final pulumi.Output<String> registryName;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/registry:Registry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
