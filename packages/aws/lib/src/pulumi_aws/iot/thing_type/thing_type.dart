import 'package:pulumi/pulumi.dart' as pulumi;
import '../thing_type_properties/thing_type_properties.dart';
import 'thing_type_args.dart';

/// Creates and manages an AWS IoT Thing Type.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Thing Types using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingType:ThingType example example
/// ```
class ThingType extends pulumi.CustomResource {
  /// The ARN of the created AWS IoT Thing Type.
  late final pulumi.Output<String> arn;

  /// Whether the thing type is deprecated. If true, no new things could be associated with this type.
  late final pulumi.Output<bool?> deprecated;

  /// The name of the thing type.
  late final pulumi.Output<String> name;

  /// , Configuration block that can contain the following properties of the thing type:
  late final pulumi.Output<ThingTypeProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ThingType(
    String name, {
    ThingTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingType:ThingType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deprecated = registerOutput<bool?>('deprecated');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ThingTypeProperties?>('properties');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
