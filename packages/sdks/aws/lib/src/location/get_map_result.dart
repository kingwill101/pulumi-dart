// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_map_configuration.dart';

/// Result data returned by getMap.
class GetMapResult {
  /// List of configurations that specify the map tile style selected from a partner data provider.
  final List<GetMapConfiguration>? configurations;
  /// Timestamp for when the map resource was created in ISO 8601 format.
  final String? createTime;
  /// Optional description for the map resource.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN for the map resource.
  final String? mapArn;
  final String? mapName;
  final String? region;
  /// Key-value map of resource tags for the map.
  final Map<String, String>? tags;
  /// Timestamp for when the map resource was last updated in ISO 8601 format.
  final String? updateTime;

  /// Creates a new [GetMapResult].
  /// [configurations] List of configurations that specify the map tile style selected from a partner data provider.
  /// [createTime] Timestamp for when the map resource was created in ISO 8601 format.
  /// [description] Optional description for the map resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mapArn] ARN for the map resource.
  /// [mapName] Optional.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the map.
  /// [updateTime] Timestamp for when the map resource was last updated in ISO 8601 format.
  const GetMapResult({
    this.configurations,
    this.createTime,
    this.description,
    this.id,
    this.mapArn,
    this.mapName,
    this.region,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?(() { final guardedValue = configurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMapConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'id': ?id,
      'mapArn': ?mapArn,
      'mapName': ?mapName,
      'region': ?region,
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory GetMapResult.fromMap(Map<String, dynamic> map) {
    return GetMapResult(
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMapConfiguration>(guardedValue, (value) => GetMapConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mapArn: (() { final guardedValue = map['mapArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mapName: (() { final guardedValue = map['mapName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
