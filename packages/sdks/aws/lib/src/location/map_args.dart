// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'map_configuration.dart';

/// {@template pulumi_location_map_map_args_doc}
/// The set of arguments for Map.
/// {@endtemplate}
/// {@macro pulumi_location_map_map_args_doc}
class MapArgs {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  final pulumi.Input<MapConfiguration> configuration;
  /// An optional description for the map resource.
  final pulumi.Input<String>? description;
  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> mapName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MapArgs].
  /// [configuration] Configuration block with the map style selected from an available data provider. Detailed below.
  /// [description] An optional description for the map resource.
  /// [mapName] The name for the map resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MapArgs({
    required pulumi.Output<MapConfiguration> configuration,
    pulumi.Output<String>? description,
    required pulumi.Output<String> mapName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configuration = pulumi.Input.asInput<MapConfiguration>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      mapName = pulumi.Input.asInput<String>(mapName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<MapConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'mapName': mapName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory MapArgs.fromMap(Map<String, dynamic> map) {
    return MapArgs(
      configuration: pulumi.Output.create<MapConfiguration>(MapConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      mapName: pulumi.Output.create<String>(map['mapName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

