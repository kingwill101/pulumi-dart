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
  GetMapArgs({
    required String mapName,
    String? region,
    Map<String, String>? tags,
  })  : mapName = pulumi.Input.asInput<String>(mapName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetMapArgs.fromMap(Map<String, dynamic> map) {
    return GetMapArgs(
      mapName: map['mapName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
