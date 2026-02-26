// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMap.
class GetMapArgs {
  /// Name of the map resource.
  final Input<String> mapName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the map.
  final Input<Map<String, String>>? tags;

  GetMapArgs({
    required this.mapName,
    this.region,
    this.tags,
  });

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
      mapName: Input.asInput<String>(map['mapName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
