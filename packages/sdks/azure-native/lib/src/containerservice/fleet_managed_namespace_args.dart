// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_managed_namespace_properties.dart';

/// {@template pulumi_containerservice_fleet_managed_namespace_args_doc}
/// The set of arguments for FleetManagedNamespace.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_managed_namespace_args_doc}
class FleetManagedNamespaceArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the fleet managed namespace resource.
  final pulumi.Input<String>? managedNamespaceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<FleetManagedNamespaceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FleetManagedNamespaceArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [location] The geo-location where the resource lives
  /// [managedNamespaceName] The name of the fleet managed namespace resource.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FleetManagedNamespaceArgs({
    required this.fleetName,
    this.location,
    this.managedNamespaceName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'location': ?location,
      'managedNamespaceName': ?managedNamespaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FleetManagedNamespaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FleetManagedNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespaceArgs(
      fleetName: (map['fleetName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedNamespaceName: map['managedNamespaceName'] == null ? null : (map['managedNamespaceName'] as String).input(),
      properties: map['properties'] == null ? null : (FleetManagedNamespaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

