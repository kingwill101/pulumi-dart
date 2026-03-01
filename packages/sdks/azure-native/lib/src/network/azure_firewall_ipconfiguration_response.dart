// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// IP configuration of an Azure Firewall.
class AzureFirewallIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The Firewall Internal Load Balancer IP to be used as the next hop in User Defined Routes.
  final String privateIPAddress;
  /// The provisioning state of the Azure firewall IP configuration resource.
  final String provisioningState;
  /// Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  final SubResourceResponse? publicIPAddress;
  /// Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  final SubResourceResponse? subnet;
  /// Type of the resource.
  final String type;

  /// Creates a new [AzureFirewallIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAddress] The Firewall Internal Load Balancer IP to be used as the next hop in User Defined Routes.
  /// [provisioningState] The provisioning state of the Azure firewall IP configuration resource.
  /// [publicIPAddress] Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  /// [subnet] Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  /// [type] Type of the resource.
  AzureFirewallIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.privateIPAddress,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAddress': privateIPAddress,
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory AzureFirewallIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallIPConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResourceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

