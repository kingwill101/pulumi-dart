// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';

/// Properties of a Managed Network Peering Policy
class ManagedNetworkPeeringPolicyProperties {
  /// Gets or sets the hub virtual network ID
  final ResourceId? hub;
  /// Gets or sets the mesh group IDs
  final List<ResourceId>? mesh;
  /// Gets or sets the spokes group IDs
  final List<ResourceId>? spokes;
  /// Gets or sets the connectivity type of a network structure policy
  final String type;

  /// Creates a new [ManagedNetworkPeeringPolicyProperties].
  /// [hub] Gets or sets the hub virtual network ID
  /// [mesh] Gets or sets the mesh group IDs
  /// [spokes] Gets or sets the spokes group IDs
  /// [type] Gets or sets the connectivity type of a network structure policy
  ManagedNetworkPeeringPolicyProperties({
    this.hub,
    this.mesh,
    this.spokes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hub': ?hub == null ? null : hub!.toMap(),
      'mesh': ?mesh == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(mesh!, (value) => value.toMap()),
      'spokes': ?spokes == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(spokes!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ManagedNetworkPeeringPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyProperties(
      hub: map['hub'] == null ? null : ResourceId.fromMap((map['hub'] as Map).cast<String, dynamic>()),
      mesh: map['mesh'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['mesh'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
      spokes: map['spokes'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['spokes'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

