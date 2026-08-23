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
  const DiscoverySourceArgs({
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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapName: pulumi.Input.fromValue(map['mapName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OffAzureDiscoverySourceResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
