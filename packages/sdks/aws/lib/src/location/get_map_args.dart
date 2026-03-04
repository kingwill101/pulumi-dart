// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_map_get_map_args_doc}
/// Arguments for getMap.
/// {@endtemplate}
/// {@macro pulumi_location_get_map_get_map_args_doc}
class GetMapArgs {
  /// Name of the map resource.
  final pulumi.Input<String> mapName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the map.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetMapArgs].
  /// [mapName] Name of the map resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the map.
  GetMapArgs({required this.mapName, this.region, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapName': mapName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetMapArgs.fromMap(Map<String, dynamic> map) {
    return GetMapArgs(
      mapName: pulumi.Input.fromValue(map['mapName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
