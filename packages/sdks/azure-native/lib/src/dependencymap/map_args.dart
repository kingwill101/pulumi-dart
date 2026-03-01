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
    pulumi.Output<String>? location,
    pulumi.Output<String>? mapName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      mapName = pulumi.Input.asOptionalInput<String>(mapName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mapName: map['mapName'] == null ? null : pulumi.Output.create<String>(map['mapName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

