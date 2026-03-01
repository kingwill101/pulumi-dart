// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_network_gateway_policy_group_member_response.dart';

/// Parameters for VirtualNetworkGatewayPolicyGroup.
class VirtualNetworkGatewayPolicyGroupResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  final bool isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  final List<VirtualNetworkGatewayPolicyGroupMemberResponse> policyMembers;
  /// Priority for VirtualNetworkGatewayPolicyGroup.
  final int priority;
  /// The provisioning state of the VirtualNetworkGatewayPolicyGroup resource.
  final String provisioningState;
  /// List of references to vngClientConnectionConfigurations.
  final List<SubResourceResponse> vngClientConnectionConfigurations;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [policyMembers] Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  /// [priority] Priority for VirtualNetworkGatewayPolicyGroup.
  /// [provisioningState] The provisioning state of the VirtualNetworkGatewayPolicyGroup resource.
  /// [vngClientConnectionConfigurations] List of references to vngClientConnectionConfigurations.
  VirtualNetworkGatewayPolicyGroupResponse({
    required this.etag,
    this.id,
    required this.isDefault,
    this.name,
    required this.policyMembers,
    required this.priority,
    required this.provisioningState,
    required this.vngClientConnectionConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'isDefault': isDefault,
      'name': ?name,
      'policyMembers': pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupMemberResponse, Map<String, dynamic>>(policyMembers, (value) => value.toMap()),
      'priority': priority,
      'provisioningState': provisioningState,
      'vngClientConnectionConfigurations': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(vngClientConnectionConfigurations, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkGatewayPolicyGroupResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroupResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      policyMembers: pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupMemberResponse>(map['policyMembers'], (value) => VirtualNetworkGatewayPolicyGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      vngClientConnectionConfigurations: pulumi.Input.decodeList<SubResourceResponse>(map['vngClientConnectionConfigurations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

