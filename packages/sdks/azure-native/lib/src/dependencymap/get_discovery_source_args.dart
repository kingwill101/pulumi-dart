// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dependencymap_get_discovery_source_args_doc}
/// Arguments for getDiscoverySource.
/// {@endtemplate}
/// {@macro pulumi_dependencymap_get_discovery_source_args_doc}
class GetDiscoverySourceArgs {
  /// Maps resource name
  final pulumi.Input<String> mapName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// discovery source resource
  final pulumi.Input<String> sourceName;

  /// Creates a new [GetDiscoverySourceArgs].
  /// [mapName] Maps resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceName] discovery source resource
  GetDiscoverySourceArgs({
    required this.mapName,
    required this.resourceGroupName,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
      'sourceName': sourceName,
    };
  }

  factory GetDiscoverySourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoverySourceArgs(
      mapName: (map['mapName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceName: (map['sourceName'] as String).input(),
    );
  }
}

