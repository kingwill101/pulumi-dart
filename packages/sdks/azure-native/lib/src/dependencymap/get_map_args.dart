// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dependencymap_get_map_args_doc}
/// Arguments for getMap.
/// {@endtemplate}
/// {@macro pulumi_dependencymap_get_map_args_doc}
class GetMapArgs {
  /// Maps resource name
  final pulumi.Input<String> mapName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMapArgs].
  /// [mapName] Maps resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMapArgs({
    required this.mapName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMapArgs.fromMap(Map<String, dynamic> map) {
    return GetMapArgs(
      mapName: (map['mapName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

