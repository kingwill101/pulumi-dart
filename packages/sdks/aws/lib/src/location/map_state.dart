// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'map_configuration.dart';

/// Input properties used for looking up and filtering Map resources.
class MapState {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  final pulumi.Input<MapConfiguration>? configuration;
  /// The timestamp for when the map resource was created in ISO 8601 format.
  final pulumi.Input<String>? createTime;
  /// An optional description for the map resource.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS.
  final pulumi.Input<String>? mapArn;
  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? mapName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The timestamp for when the map resource was last updated in ISO 8601 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MapState].
  /// [configuration] Configuration block with the map style selected from an available data provider. Detailed below.
  /// [createTime] The timestamp for when the map resource was created in ISO 8601 format.
  /// [description] An optional description for the map resource.
  /// [mapArn] The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS.
  /// [mapName] The name for the map resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the map. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updateTime] The timestamp for when the map resource was last updated in ISO 8601 format.
  MapState({
    this.configuration,
    this.createTime,
    this.description,
    this.mapArn,
    this.mapName,
    this.region,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<MapConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'mapArn': ?mapArn,
      'mapName': ?mapName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory MapState.fromMap(Map<String, dynamic> map) {
    return MapState(
      configuration: map['configuration'] == null ? null : (MapConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      mapArn: map['mapArn'] == null ? null : (map['mapArn'] as String).input(),
      mapName: map['mapName'] == null ? null : (map['mapName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

