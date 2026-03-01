// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address.dart';

class OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration {
  /// A list of Backend Address Pools IDs from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  final List<String>? applicationGatewayBackendAddressPoolIds;
  /// A list of Application Security Group IDs which this Virtual Machine Scale Set should be connected to.
  final List<String>? applicationSecurityGroupIds;
  /// A list of Backend Address Pools IDs from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  ///
  /// > **Note:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a depends_on between this resource and the Load Balancer Rule.
  final List<String>? loadBalancerBackendAddressPoolIds;
  /// The Name which should be used for this IP Configuration.
  final String name;
  /// Is this the Primary IP Configuration for this Network Interface? Possible values are `true` and `false`. Defaults to `false`.
  ///
  /// > **Note:** One `ip_configuration` block must be marked as Primary for each Network Interface.
  final bool? primary;
  /// A `public_ip_address` block as defined below.
  final List<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>? publicIpAddresses;
  /// The ID of the Subnet which this IP Configuration should be connected to.
  ///
  /// > **Note:** `subnet_id` is required if version is set to `IPv4`.
  final String? subnetId;
  /// The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  final String? version;

  /// Creates a new [OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] A list of Backend Address Pools IDs from a Application Gateway which this Virtual Machine Scale Set should be connected to.
  /// [applicationSecurityGroupIds] A list of Application Security Group IDs which this Virtual Machine Scale Set should be connected to.
  /// [loadBalancerBackendAddressPoolIds] A list of Backend Address Pools IDs from a Load Balancer which this Virtual Machine Scale Set should be connected to.
  /// [name] The Name which should be used for this IP Configuration.
  /// [primary] Is this the Primary IP Configuration for this Network Interface? Possible values are `true` and `false`. Defaults to `false`.
  /// [publicIpAddresses] A `public_ip_address` block as defined below.
  /// [subnetId] The ID of the Subnet which this IP Configuration should be connected to.
  /// [version] The Internet Protocol Version which should be used for this IP Configuration. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`.
  OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    required this.name,
    this.primary,
    this.publicIpAddresses,
    this.subnetId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolIds': ?applicationGatewayBackendAddressPoolIds,
      'applicationSecurityGroupIds': ?applicationSecurityGroupIds,
      'loadBalancerBackendAddressPoolIds': ?loadBalancerBackendAddressPoolIds,
      'name': name,
      'primary': ?primary,
      'publicIpAddresses': ?publicIpAddresses == null ? null : pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress, Map<String, dynamic>>(publicIpAddresses!, (value) => value.toMap()),
      'subnetId': ?subnetId,
      'version': ?version,
    };
  }

  factory OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration(
      applicationGatewayBackendAddressPoolIds: map['applicationGatewayBackendAddressPoolIds'] == null ? null : (map['applicationGatewayBackendAddressPoolIds'] as List).cast<String>(),
      applicationSecurityGroupIds: map['applicationSecurityGroupIds'] == null ? null : (map['applicationSecurityGroupIds'] as List).cast<String>(),
      loadBalancerBackendAddressPoolIds: map['loadBalancerBackendAddressPoolIds'] == null ? null : (map['loadBalancerBackendAddressPoolIds'] as List).cast<String>(),
      name: map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      publicIpAddresses: map['publicIpAddresses'] == null ? null : pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress>(map['publicIpAddresses'], (value) => OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap((value as Map).cast<String, dynamic>())),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

