// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'sub_resource_response.dart';

/// A vpn client connection configuration for client connection configuration.
class VngClientConnectionConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VngClientConnectionConfiguration resource.
  final String provisioningState;
  /// List of references to virtualNetworkGatewayPolicyGroups
  final List<SubResourceResponse> virtualNetworkGatewayPolicyGroups;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final AddressSpaceResponse vpnClientAddressPool;

  /// Creates a new [VngClientConnectionConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VngClientConnectionConfiguration resource.
  /// [virtualNetworkGatewayPolicyGroups] List of references to virtualNetworkGatewayPolicyGroups
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  VngClientConnectionConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.virtualNetworkGatewayPolicyGroups,
    required this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'virtualNetworkGatewayPolicyGroups': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualNetworkGatewayPolicyGroups, (value) => value.toMap()),
      'vpnClientAddressPool': vpnClientAddressPool.toMap(),
    };
  }

  factory VngClientConnectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VngClientConnectionConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      virtualNetworkGatewayPolicyGroups: pulumi.Input.decodeList<SubResourceResponse>(map['virtualNetworkGatewayPolicyGroups'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientAddressPool: AddressSpaceResponse.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
    );
  }
}

