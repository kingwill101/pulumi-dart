import 'package:pulumi/pulumi.dart';
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
class ThingGroup extends CustomResource {
  /// The ARN of the Thing Group.
  late final Output<String> arn;
  late final Output<List<ThingGroupMetadata>> metadatas;

  /// The name of the Thing Group.
  late final Output<String> name;

  /// The name of the parent Thing Group.
  late final Output<String?> parentGroupName;

  /// The Thing Group properties. Defined below.
  late final Output<ThingGroupProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The current version of the Thing Group record in the registry.
  late final Output<int> version;

  ThingGroup(
    String name, {
    ThingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingGroup:ThingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
