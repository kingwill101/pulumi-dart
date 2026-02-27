import 'package:pulumi/pulumi.dart' as pulumi;
import '../thing_group_metadata/thing_group_metadata.dart';
import '../thing_group_properties/thing_group_properties.dart';
import 'thing_group_args.dart';

/// Manages an AWS IoT Thing Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Things Groups using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingGroup:ThingGroup example example
/// ```
class ThingGroup extends pulumi.CustomResource {
  /// The ARN of the Thing Group.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<List<ThingGroupMetadata>> metadatas;

  /// The name of the Thing Group.
  late final pulumi.Output<String> name;

  /// The name of the parent Thing Group.
  late final pulumi.Output<String?> parentGroupName;

  /// The Thing Group properties. Defined below.
  late final pulumi.Output<ThingGroupProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The current version of the Thing Group record in the registry.
  late final pulumi.Output<int> version;

  ThingGroup(
    String name, {
    ThingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingGroup:ThingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metadatas = registerOutput<List<ThingGroupMetadata>>('metadatas');
    this.name = registerOutput<String>('name');
    this.parentGroupName = registerOutput<String?>('parentGroupName');
    this.properties = registerOutput<ThingGroupProperties?>('properties');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
