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
    required pulumi.Output<String> mapName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      mapName = pulumi.Input.asInput<String>(mapName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMapArgs.fromMap(Map<String, dynamic> map) {
    return GetMapArgs(
      mapName: pulumi.Output.create<String>(map['mapName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

