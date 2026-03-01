// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope.dart';

/// {@template pulumi_managednetwork_managed_network_args_doc}
/// The set of arguments for ManagedNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_managed_network_args_doc}
class ManagedNetworkArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Managed Network.
  final pulumi.Input<String>? managedNetworkName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  final pulumi.Input<Scope>? scope;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedNetworkArgs].
  /// [location] The geo-location where the resource lives
  /// [managedNetworkName] The name of the Managed Network.
  /// [resourceGroupName] The name of the resource group.
  /// [scope] The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  /// [tags] Resource tags
  ManagedNetworkArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedNetworkName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Scope>? scope,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managedNetworkName = pulumi.Input.asOptionalInput<String>(managedNetworkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<Scope>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedNetworkName: map['managedNetworkName'] == null ? null : pulumi.Output.create<String>(map['managedNetworkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<Scope>(Scope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

