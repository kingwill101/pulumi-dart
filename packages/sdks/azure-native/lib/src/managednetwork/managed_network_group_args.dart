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
  const ManagedNetworkGroupArgs({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetworkGroupName: (() { final guardedValue = map['managedNetworkGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

