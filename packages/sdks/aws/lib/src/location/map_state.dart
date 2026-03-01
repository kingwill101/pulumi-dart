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
    pulumi.Output<MapConfiguration>? configuration,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? mapArn,
    pulumi.Output<String>? mapName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      configuration = pulumi.Input.asOptionalInput<MapConfiguration>(configuration),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      mapArn = pulumi.Input.asOptionalInput<String>(mapArn),
      mapName = pulumi.Input.asOptionalInput<String>(mapName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      configuration: map['configuration'] == null ? null : pulumi.Output.create<MapConfiguration>(MapConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      mapArn: map['mapArn'] == null ? null : pulumi.Output.create<String>(map['mapArn'] as String),
      mapName: map['mapName'] == null ? null : pulumi.Output.create<String>(map['mapName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

