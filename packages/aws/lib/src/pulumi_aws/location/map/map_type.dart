import 'package:pulumi/pulumi.dart' as pulumi;
import '../map_configuration/map_configuration.dart';
import 'map_args.dart';

/// Provides a Location Service Map.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.Map` resources using the map name. For example:
///
/// ```sh
/// $ pulumi import aws:location/map:Map example example
/// ```
class MapType extends pulumi.CustomResource {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  late final pulumi.Output<MapConfiguration> configuration;

  /// The timestamp for when the map resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;

  /// An optional description for the map resource.
  late final pulumi.Output<String?> description;

  /// The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS.
  late final pulumi.Output<String> mapArn;

  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> mapName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The timestamp for when the map resource was last updated in ISO 8601 format.
  late final pulumi.Output<String> updateTime;

  MapType(
    String name, {
    MapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/map:Map',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuration = registerOutput<MapConfiguration>('configuration');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.mapArn = registerOutput<String>('mapArn');
    this.mapName = registerOutput<String>('mapName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
