// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';

/// Properties of a Managed Network Peering Policy
class ManagedNetworkPeeringPolicyProperties {
  /// Gets or sets the hub virtual network ID
  final pulumi.Input<ResourceId>? hub;
  /// Gets or sets the mesh group IDs
  final pulumi.Input<List<ResourceId>>? mesh;
  /// Gets or sets the spokes group IDs
  final pulumi.Input<List<ResourceId>>? spokes;
  /// Gets or sets the connectivity type of a network structure policy
  final pulumi.Input<String> type;

  /// Creates a new [ManagedNetworkPeeringPolicyProperties].
  /// [hub] Gets or sets the hub virtual network ID
  /// [mesh] Gets or sets the mesh group IDs
  /// [spokes] Gets or sets the spokes group IDs
  /// [type] Gets or sets the connectivity type of a network structure policy
  const ManagedNetworkPeeringPolicyProperties({
    this.hub,
    this.mesh,
    this.spokes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hub': ?pulumi.Input.mapOptionalInputValue<ResourceId, Map<String, dynamic>>(hub, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(mesh, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spokes': ?pulumi.Input.mapOptionalInputValue<List<ResourceId>, List<Map<String, dynamic>>>(spokes, (value) => pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ManagedNetworkPeeringPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyProperties(
      hub: (() { final guardedValue = map['hub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mesh: (() { final guardedValue = map['mesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spokes: (() { final guardedValue = map['spokes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceId>(guardedValue, (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

