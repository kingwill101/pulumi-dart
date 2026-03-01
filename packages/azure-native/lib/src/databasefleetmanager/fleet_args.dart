// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_properties.dart';

/// {@template pulumi_databasefleetmanager_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_fleet_args_doc}
class FleetArgs {
  /// Name of the database fleet.
  final pulumi.Input<String>? fleetName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fleet properties.
  final pulumi.Input<FleetProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FleetArgs].
  /// [fleetName] Name of the database fleet.
  /// [location] The geo-location where the resource lives
  /// [properties] The fleet properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FleetArgs({
    String? fleetName,
    String? location,
    FleetProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      fleetName = pulumi.Input.asOptionalInput<String>(fleetName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<FleetProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': ?fleetName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<FleetProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      fleetName: map['fleetName'] == null ? null : map['fleetName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : FleetProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

