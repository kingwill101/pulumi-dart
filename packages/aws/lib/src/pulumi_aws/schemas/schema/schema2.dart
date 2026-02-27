import 'package:pulumi/pulumi.dart';
import 'schema_args2.dart';

/// Provides an EventBridge Schema resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge schema using the `name` and `registry_name`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/schema:Schema test name/registry
/// ```
class Schema2 extends CustomResource {
  /// The Amazon Resource Name (ARN) of the discoverer.
  late final Output<String> arn;

  /// The schema specification. Must be a valid Open API 3.0 spec.
  late final Output<String> content;

  /// The description of the schema. Maximum of 256 characters.
  late final Output<String?> description;

  /// The last modified date of the schema.
  late final Output<String> lastModified;

  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the registry in which this schema belongs.
  late final Output<String> registryName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  late final Output<String> type;

  /// The version of the schema.
  late final Output<String> version;

  /// The created date of the version of the schema.
  late final Output<String> versionCreatedDate;

  Schema2(
    String name, {
    SchemaArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:schemas/schema:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.description = registerOutput<String?>('description');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
    this.versionCreatedDate = registerOutput<String>('versionCreatedDate');
  }
}
