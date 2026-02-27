// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../map_configuration/map_configuration.dart';

/// The set of arguments for Map.
class MapArgs {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  final Input<MapConfiguration> configuration;

  /// An optional description for the map resource.
  final Input<String>? description;

  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  final Input<String> mapName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MapArgs({
    required this.configuration,
    this.description,
    required this.mapName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] =
        Input.mapInputValue<MapConfiguration, Map<String, dynamic>>(
            configuration, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['mapName'] = mapName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MapArgs.fromMap(Map<String, dynamic> map) {
    return MapArgs(
      configuration: Input.asInput<MapConfiguration>(map['configuration']),
      description: Input.asOptionalInput<String>(map['description']),
      mapName: Input.asInput<String>(map['mapName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
