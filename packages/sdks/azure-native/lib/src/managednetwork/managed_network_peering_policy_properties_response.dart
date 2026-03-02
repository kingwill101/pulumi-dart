// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// Properties of a Managed Network Peering Policy
class ManagedNetworkPeeringPolicyPropertiesResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Gets or sets the hub virtual network ID
  final pulumi.Input<ResourceIdResponse>? hub;
  /// Gets or sets the mesh group IDs
  final pulumi.Input<List<ResourceIdResponse>>? mesh;
  /// Provisioning state of the ManagedNetwork resource.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the spokes group IDs
  final pulumi.Input<List<ResourceIdResponse>>? spokes;
  /// Gets or sets the connectivity type of a network structure policy
  final pulumi.Input<String> type;

  /// Creates a new [ManagedNetworkPeeringPolicyPropertiesResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hub] Gets or sets the hub virtual network ID
  /// [mesh] Gets or sets the mesh group IDs
  /// [provisioningState] Provisioning state of the ManagedNetwork resource.
  /// [spokes] Gets or sets the spokes group IDs
  /// [type] Gets or sets the connectivity type of a network structure policy
  ManagedNetworkPeeringPolicyPropertiesResponse({
    required this.etag,
    this.hub,
    this.mesh,
    required this.provisioningState,
    this.spokes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'hub': ?pulumi.Input.mapOptionalInputValue<ResourceIdResponse, Map<String, dynamic>>(hub, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(mesh, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'spokes': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(spokes, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ManagedNetworkPeeringPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyPropertiesResponse(
      etag: (map['etag'] as String).input(),
      hub: map['hub'] == null ? null : (ResourceIdResponse.fromMap((map['hub']! as Map).cast<String, dynamic>())).input(),
      mesh: map['mesh'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['mesh']!, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      spokes: map['spokes'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['spokes']!, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

