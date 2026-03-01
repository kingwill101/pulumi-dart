// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_fleet_args_doc}
class FleetArgs {
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String>? fleetName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FleetArgs].
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FleetArgs({
    pulumi.Output<String>? fleetName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      fleetName = pulumi.Input.asOptionalInput<String>(fleetName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': ?fleetName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      fleetName: map['fleetName'] == null ? null : pulumi.Output.create<String>(map['fleetName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

