import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_attribute_group_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Attribute Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog AppRegistry Attribute Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup example 1234567890abcfedhijk09876s
/// ```
class AppregistryAttributeGroup extends pulumi.CustomResource {
  /// ARN of the Attribute Group.
  late final pulumi.Output<String> arn;

  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> attributes;

  /// Description of the Attribute Group.
  late final pulumi.Output<String?> description;

  /// Name of the Attribute Group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags assigned to the Attribute Group. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AppregistryAttributeGroup(
    String name, {
    AppregistryAttributeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<String>('attributes');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
