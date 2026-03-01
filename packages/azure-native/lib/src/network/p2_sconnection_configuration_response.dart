// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';
import 'vpn_server_configuration_policy_group_response.dart';

/// P2SConnectionConfiguration Resource.
class P2SConnectionConfigurationResponse {
  /// List of Configuration Policy Groups that this P2SConnectionConfiguration is attached to.
  final List<SubResourceResponse> configurationPolicyGroupAssociations;
  /// Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  final bool? enableInternetSecurity;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// List of previous Configuration Policy Groups that this P2SConnectionConfiguration was attached to.
  final List<VpnServerConfigurationPolicyGroupResponse> previousConfigurationPolicyGroupAssociations;
  /// The provisioning state of the P2SConnectionConfiguration resource.
  final String provisioningState;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfigurationResponse? routingConfiguration;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final AddressSpaceResponse? vpnClientAddressPool;

  /// Creates a new [P2SConnectionConfigurationResponse].
  /// [configurationPolicyGroupAssociations] List of Configuration Policy Groups that this P2SConnectionConfiguration is attached to.
  /// [enableInternetSecurity] Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [previousConfigurationPolicyGroupAssociations] List of previous Configuration Policy Groups that this P2SConnectionConfiguration was attached to.
  /// [provisioningState] The provisioning state of the P2SConnectionConfiguration resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  P2SConnectionConfigurationResponse({
    required this.configurationPolicyGroupAssociations,
    this.enableInternetSecurity,
    required this.etag,
    this.id,
    this.name,
    required this.previousConfigurationPolicyGroupAssociations,
    required this.provisioningState,
    this.routingConfiguration,
    this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicyGroupAssociations': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(configurationPolicyGroupAssociations, (value) => value.toMap()),
      'enableInternetSecurity': ?enableInternetSecurity,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'previousConfigurationPolicyGroupAssociations': pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupResponse, Map<String, dynamic>>(previousConfigurationPolicyGroupAssociations, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'vpnClientAddressPool': ?vpnClientAddressPool == null ? null : vpnClientAddressPool!.toMap(),
    };
  }

  factory P2SConnectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return P2SConnectionConfigurationResponse(
      configurationPolicyGroupAssociations: pulumi.Input.decodeList<SubResourceResponse>(map['configurationPolicyGroupAssociations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      previousConfigurationPolicyGroupAssociations: pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupResponse>(map['previousConfigurationPolicyGroupAssociations'], (value) => VpnServerConfigurationPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfigurationResponse.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      vpnClientAddressPool: map['vpnClientAddressPool'] == null ? null : AddressSpaceResponse.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
    );
  }
}

