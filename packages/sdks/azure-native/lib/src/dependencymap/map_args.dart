// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dependencymap_map_args_doc}
/// The set of arguments for Map.
/// {@endtemplate}
/// {@macro pulumi_dependencymap_map_args_doc}
class MapArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maps resource name
  final pulumi.Input<String>? mapName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MapArgs].
  /// [location] The geo-location where the resource lives
  /// [mapName] Maps resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  MapArgs({
    this.location,
    this.mapName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'mapName': ?mapName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MapArgs.fromMap(Map<String, dynamic> map) {
    return MapArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mapName: map['mapName'] == null ? null : (map['mapName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

