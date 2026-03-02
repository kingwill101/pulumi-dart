// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';

/// {@template pulumi_managednetwork_managed_network_group_args_doc}
/// The set of arguments for ManagedNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_managed_network_group_args_doc}
class ManagedNetworkGroupArgs {
  /// Responsibility role under which this Managed Network Group will be created
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Managed Network Group.
  final pulumi.Input<String>? managedNetworkGroupName;
  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;
  /// The collection of management groups covered by the Managed Network
  final pulumi.Input<List<ResourceId>>? managementGroups;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The collection of  subnets covered by the Managed Network
  final pulumi.Input<List<ResourceId>>? subnets;
  /// The collection of subscriptions covered by the Managed Network
  final pulumi.Input<List<ResourceId>>? subscriptions;
  /// The collection of virtual nets covered by the Managed Network
  final pulumi.Input<List<ResourceId>>? virtualNetworks;

  /// Creates a new [ManagedNetworkGroupArgs].
  /// [kind] Responsibility role under which this Managed Network Group will be created
  /// [location] The geo-location where the resource lives
  /// [managedNetworkGroupName] The name of the Managed Network Group.
  /// [managedNetworkName] The name of the Managed Network.
  /// [managementGroups] The collection of management groups covered by the Managed Network
  /// [resourceGroupName] The name of the resource group.
  /// [subnets] The collection of  subnets covered by the Managed Network
  /// [subscriptions] The collection of subscriptions covered by the Managed Network
  /// [virtualNetworks] The collection of virtual nets covered by the Managed Network
  ManagedNetworkGroupArgs({
    this.kind,
    this.location,
    this.managedNetworkGroupName,
    required this.managedNetworkName,
    this.managementGroups,
    required this.resourceGroupName,
    this.subnets,
    this.subscriptions,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'location': ?location,
      'managedNetworkGroupName': ?managedNetworkGroupName,
      'managedNetworkName': managedNetworkName,
      'managementGroups': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(managementGroups, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkGroupArgs(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedNetworkGroupName: map['managedNetworkGroupName'] == null ? null : (map['managedNetworkGroupName']! as String).input(),
      managedNetworkName: (map['managedNetworkName'] as String).input(),
      managementGroups: map['managementGroups'] == null ? null : (pulumi.Input.decodeList<ResourceId>(map['managementGroups']!, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<ResourceId>(map['subnets']!, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subscriptions: map['subscriptions'] == null ? null : (pulumi.Input.decodeList<ResourceId>(map['subscriptions']!, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworks: map['virtualNetworks'] == null ? null : (pulumi.Input.decodeList<ResourceId>(map['virtualNetworks']!, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

