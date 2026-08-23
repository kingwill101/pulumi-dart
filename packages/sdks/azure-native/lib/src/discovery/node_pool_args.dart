// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_properties.dart';

/// {@template pulumi_discovery_node_pool_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_discovery_node_pool_args_doc}
class NodePoolArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the NodePool
  final pulumi.Input<String>? nodePoolName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<NodePoolProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Supercomputer
  final pulumi.Input<String> supercomputerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NodePoolArgs].
  /// [location] The geo-location where the resource lives
  /// [nodePoolName] The name of the NodePool
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supercomputerName] The name of the Supercomputer
  /// [tags] Resource tags.
  const NodePoolArgs({
    this.location,
    this.nodePoolName,
    this.properties,
    required this.resourceGroupName,
    required this.supercomputerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'nodePoolName': ?nodePoolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NodePoolProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'supercomputerName': supercomputerName,
      'tags': ?tags,
    };
  }

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePoolName: (() { final guardedValue = map['nodePoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supercomputerName: pulumi.Input.fromValue(map['supercomputerName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
