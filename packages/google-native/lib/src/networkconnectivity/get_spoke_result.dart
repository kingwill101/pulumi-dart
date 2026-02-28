// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_interconnect_attachments_response.dart';
import 'linked_router_appliance_instances_response.dart';
import 'linked_vpc_network_response.dart';
import 'linked_vpn_tunnels_response.dart';
import 'state_reason_response.dart';

/// Result data returned by getSpoke.
class GetSpokeResult {
  /// The time the spoke was created.
  final String createTime;

  /// An optional description of the spoke.
  final String description;

  /// Optional. The name of the group that this spoke is associated with.
  final String group;

  /// Immutable. The name of the hub that this spoke is attached to.
  final String hub;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final Map<String, String> labels;

  /// VLAN attachments that are associated with the spoke.
  final LinkedInterconnectAttachmentsResponse linkedInterconnectAttachments;

  /// Router appliance instances that are associated with the spoke.
  final LinkedRouterApplianceInstancesResponse linkedRouterApplianceInstances;

  /// Optional. VPC network that is associated with the spoke.
  final LinkedVpcNetworkResponse linkedVpcNetwork;

  /// VPN tunnels that are associated with the spoke.
  final LinkedVpnTunnelsResponse linkedVpnTunnels;

  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  final String name;

  /// The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  final List<StateReasonResponse> reasons;

  /// The type of resource associated with the spoke.
  final String spokeType;

  /// The current lifecycle state of this spoke.
  final String state;

  /// The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  final String uniqueId;

  /// The time the spoke was last updated.
  final String updateTime;

  /// Creates a new [GetSpokeResult].
  /// [createTime] The time the spoke was created.
  /// [description] An optional description of the spoke.
  /// [group] Optional. The name of the group that this spoke is associated with.
  /// [hub] Immutable. The name of the hub that this spoke is attached to.
  /// [labels] Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [linkedInterconnectAttachments] VLAN attachments that are associated with the spoke.
  /// [linkedRouterApplianceInstances] Router appliance instances that are associated with the spoke.
  /// [linkedVpcNetwork] Optional. VPC network that is associated with the spoke.
  /// [linkedVpnTunnels] VPN tunnels that are associated with the spoke.
  /// [name] Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  /// [reasons] The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  /// [spokeType] The type of resource associated with the spoke.
  /// [state] The current lifecycle state of this spoke.
  /// [uniqueId] The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  /// [updateTime] The time the spoke was last updated.
  GetSpokeResult({
    required this.createTime,
    required this.description,
    required this.group,
    required this.hub,
    required this.labels,
    required this.linkedInterconnectAttachments,
    required this.linkedRouterApplianceInstances,
    required this.linkedVpcNetwork,
    required this.linkedVpnTunnels,
    required this.name,
    required this.reasons,
    required this.spokeType,
    required this.state,
    required this.uniqueId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['group'] = group;
    map['hub'] = hub;
    map['labels'] = labels;
    map['linkedInterconnectAttachments'] =
        linkedInterconnectAttachments.toMap();
    map['linkedRouterApplianceInstances'] =
        linkedRouterApplianceInstances.toMap();
    map['linkedVpcNetwork'] = linkedVpcNetwork.toMap();
    map['linkedVpnTunnels'] = linkedVpnTunnels.toMap();
    map['name'] = name;
    map['reasons'] =
        pulumi.Input.encodeList<StateReasonResponse, Map<String, dynamic>>(
            reasons, (value) => value.toMap());
    map['spokeType'] = spokeType;
    map['state'] = state;
    map['uniqueId'] = uniqueId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSpokeResult.fromMap(Map<String, dynamic> map) {
    return GetSpokeResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      group: map['group'] as String,
      hub: map['hub'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      linkedInterconnectAttachments:
          LinkedInterconnectAttachmentsResponse.fromMap(
              (map['linkedInterconnectAttachments'] as Map)
                  .cast<String, dynamic>()),
      linkedRouterApplianceInstances:
          LinkedRouterApplianceInstancesResponse.fromMap(
              (map['linkedRouterApplianceInstances'] as Map)
                  .cast<String, dynamic>()),
      linkedVpcNetwork: LinkedVpcNetworkResponse.fromMap(
          (map['linkedVpcNetwork'] as Map).cast<String, dynamic>()),
      linkedVpnTunnels: LinkedVpnTunnelsResponse.fromMap(
          (map['linkedVpnTunnels'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      reasons: pulumi.Input.decodeList<StateReasonResponse>(
          map['reasons'],
          (value) => StateReasonResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      spokeType: map['spokeType'] as String,
      state: map['state'] as String,
      uniqueId: map['uniqueId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
