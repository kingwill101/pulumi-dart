// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_public_ipaddress_configuration_response.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfigurationResponse {
  /// Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  final List<SubResourceResponse>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final List<SubResourceResponse>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  final List<SubResourceResponse>? loadBalancerBackendAddressPools;
  /// The IP configuration name.
  final String name;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final bool? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  final String? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final VirtualMachinePublicIPAddressConfigurationResponse? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final SubResourceResponse? subnet;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfigurationResponse].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  /// [applicationSecurityGroups] Specifies an array of references to application security group.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  /// [name] The IP configuration name.
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  /// [privateIPAddressVersion] Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAddressConfiguration] The publicIPAddressConfiguration.
  /// [subnet] Specifies the identifier of the subnet.
  VirtualMachineNetworkInterfaceIPConfigurationResponse({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    this.loadBalancerBackendAddressPools,
    required this.name,
    this.primary,
    this.privateIPAddressVersion,
    this.publicIPAddressConfiguration,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?applicationGatewayBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(applicationGatewayBackendAddressPools!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(applicationSecurityGroups!, (value) => value.toMap()),
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'name': name,
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?publicIPAddressConfiguration == null ? null : publicIPAddressConfiguration!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfigurationResponse(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['applicationGatewayBackendAddressPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['applicationSecurityGroups'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancerBackendAddressPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : VirtualMachinePublicIPAddressConfigurationResponse.fromMap((map['publicIPAddressConfiguration'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

