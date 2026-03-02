// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'off_azure_discovery_source_resource_properties.dart';

/// {@template pulumi_dependencymap_discovery_source_args_doc}
/// The set of arguments for DiscoverySource.
/// {@endtemplate}
/// {@macro pulumi_dependencymap_discovery_source_args_doc}
class DiscoverySourceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maps resource name
  final pulumi.Input<String> mapName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<OffAzureDiscoverySourceResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// discovery source resource
  final pulumi.Input<String>? sourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiscoverySourceArgs].
  /// [location] The geo-location where the resource lives
  /// [mapName] Maps resource name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceName] discovery source resource
  /// [tags] Resource tags.
  DiscoverySourceArgs({
    this.location,
    required this.mapName,
    this.properties,
    required this.resourceGroupName,
    this.sourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'mapName': mapName,
      'properties': ?pulumi.Input.mapOptionalInputValue<OffAzureDiscoverySourceResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceName': ?sourceName,
      'tags': ?tags,
    };
  }

  factory DiscoverySourceArgs.fromMap(Map<String, dynamic> map) {
    return DiscoverySourceArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mapName: (map['mapName'] as String).input(),
      properties: map['properties'] == null ? null : (OffAzureDiscoverySourceResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceName: map['sourceName'] == null ? null : (map['sourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

