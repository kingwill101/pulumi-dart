// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_public_ipaddress_configuration_response.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfigurationResponse {
  /// Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  final pulumi.Input<List<SubResourceResponse>>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final pulumi.Input<List<SubResourceResponse>>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  final pulumi.Input<List<SubResourceResponse>>? loadBalancerBackendAddressPools;
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final pulumi.Input<VirtualMachinePublicIPAddressConfigurationResponse>? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final pulumi.Input<SubResourceResponse>? subnet;

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
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressConfigurationResponse, Map<String, dynamic>>(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfigurationResponse(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['applicationGatewayBackendAddressPools']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['applicationSecurityGroups']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancerBackendAddressPools']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : (map['privateIPAddressVersion']! as String).input(),
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : (VirtualMachinePublicIPAddressConfigurationResponse.fromMap((map['publicIPAddressConfiguration']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

