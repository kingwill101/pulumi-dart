import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_schemas_args.dart';

/// Provides an EventBridge Custom Schema Registry resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge schema registries using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/registry:Registry test my_own_registry
/// ```
class RegistrySchemas extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the discoverer.
  late final pulumi.Output<String> arn;

  /// The description of the discoverer. Maximum of 256 characters.
  late final pulumi.Output<String?> description;

  /// The name of the custom event schema registry. Maximum of 64 characters consisting of lower case letters, upper case letters, 0-9, ., -, _.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  RegistrySchemas(
    String name, {
    RegistrySchemasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/registry:Registry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
