// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'neighbor_group_destination.dart';

/// {@template pulumi_managednetworkfabric_neighbor_group_args_doc}
/// The set of arguments for NeighborGroup.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_neighbor_group_args_doc}
class NeighborGroupArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// An array of destination IPv4 Addresses or IPv6 Addresses.
  final pulumi.Input<NeighborGroupDestination> destination;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Neighbor Group.
  final pulumi.Input<String>? neighborGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NeighborGroupArgs].
  /// [annotation] Switch configuration description.
  /// [destination] An array of destination IPv4 Addresses or IPv6 Addresses.
  /// [location] The geo-location where the resource lives
  /// [neighborGroupName] Name of the Neighbor Group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NeighborGroupArgs({
    this.annotation,
    required this.destination,
    this.location,
    this.neighborGroupName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'destination': pulumi.Input.mapInputValue<NeighborGroupDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'location': ?location,
      'neighborGroupName': ?neighborGroupName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NeighborGroupArgs.fromMap(Map<String, dynamic> map) {
    return NeighborGroupArgs(
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      destination: (NeighborGroupDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      neighborGroupName: map['neighborGroupName'] == null ? null : (map['neighborGroupName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

