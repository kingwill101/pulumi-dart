// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope.dart';

/// {@template pulumi_managednetwork_managed_network_args_doc}
/// The set of arguments for ManagedNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_managed_network_args_doc}
class ManagedNetworkArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the Managed Network.
  final pulumi.Input<String?>? managedNetworkName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  final pulumi.Input<Scope?>? scope;
  /// Resource tags
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ManagedNetworkArgs].
  /// [location] The geo-location where the resource lives
  /// [managedNetworkName] The name of the Managed Network.
  /// [resourceGroupName] The name of the resource group.
  /// [scope] The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  /// [tags] Resource tags
  const ManagedNetworkArgs({
    this.location,
    this.managedNetworkName,
    required this.resourceGroupName,
    this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedNetworkName': ?managedNetworkName,
      'resourceGroupName': resourceGroupName,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ManagedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetworkName: (() { final guardedValue = map['managedNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Scope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
