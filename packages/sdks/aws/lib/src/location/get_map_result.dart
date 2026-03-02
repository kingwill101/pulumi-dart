// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_map_configuration.dart';

/// Result data returned by getMap.
class GetMapResult {
  /// List of configurations that specify the map tile style selected from a partner data provider.
  final List<GetMapConfiguration> configurations;
  /// Timestamp for when the map resource was created in ISO 8601 format.
  final String createTime;
  /// Optional description for the map resource.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN for the map resource.
  final String mapArn;
  final String mapName;
  final String region;
  /// Key-value map of resource tags for the map.
  final Map<String, String> tags;
  /// Timestamp for when the map resource was last updated in ISO 8601 format.
  final String updateTime;

  /// Creates a new [GetMapResult].
  /// [configurations] List of configurations that specify the map tile style selected from a partner data provider.
  /// [createTime] Timestamp for when the map resource was created in ISO 8601 format.
  /// [description] Optional description for the map resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mapArn] ARN for the map resource.
  /// [mapName] Required.
  /// [region] Required.
  /// [tags] Key-value map of resource tags for the map.
  /// [updateTime] Timestamp for when the map resource was last updated in ISO 8601 format.
  GetMapResult({
    required this.configurations,
    required this.createTime,
    required this.description,
    required this.id,
    required this.mapArn,
    required this.mapName,
    required this.region,
    required this.tags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.encodeList<GetMapConfiguration, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'id': id,
      'mapArn': mapArn,
      'mapName': mapName,
      'region': region,
      'tags': tags,
      'updateTime': updateTime,
    };
  }

  factory GetMapResult.fromMap(Map<String, dynamic> map) {
    return GetMapResult(
      configurations: pulumi.Input.decodeList<GetMapConfiguration>(map['configurations']!, (value) => GetMapConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      mapArn: map['mapArn'] as String,
      mapName: map['mapName'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

