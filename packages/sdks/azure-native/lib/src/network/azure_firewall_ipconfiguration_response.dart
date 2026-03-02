// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// IP configuration of an Azure Firewall.
class AzureFirewallIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The Firewall Internal Load Balancer IP to be used as the next hop in User Defined Routes.
  final pulumi.Input<String> privateIPAddress;
  /// The provisioning state of the Azure firewall IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  final pulumi.Input<SubResourceResponse>? publicIPAddress;
  /// Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  final pulumi.Input<SubResourceResponse>? subnet;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureFirewallIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallIPConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateIPAddress: (map['privateIPAddress'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (SubResourceResponse.fromMap((map['publicIPAddress']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

