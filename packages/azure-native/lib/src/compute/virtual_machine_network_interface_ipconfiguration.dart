// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'virtual_machine_public_ipaddress_configuration.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfiguration {
  /// Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  final List<SubResource>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final List<SubResource>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  final List<SubResource>? loadBalancerBackendAddressPools;
  /// The IP configuration name.
  final String name;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final bool? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  final String? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final VirtualMachinePublicIPAddressConfiguration? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final SubResource? subnet;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfiguration].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  /// [applicationSecurityGroups] Specifies an array of references to application security group.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  /// [name] The IP configuration name.
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  /// [privateIPAddressVersion] Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAddressConfiguration] The publicIPAddressConfiguration.
  /// [subnet] Specifies the identifier of the subnet.
  VirtualMachineNetworkInterfaceIPConfiguration({
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
      'applicationGatewayBackendAddressPools': ?applicationGatewayBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(applicationGatewayBackendAddressPools!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(applicationSecurityGroups!, (value) => value.toMap()),
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'name': name,
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?publicIPAddressConfiguration == null ? null : publicIPAddressConfiguration!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfiguration(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['applicationGatewayBackendAddressPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<SubResource>(map['applicationSecurityGroups'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['loadBalancerBackendAddressPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : VirtualMachinePublicIPAddressConfiguration.fromMap((map['publicIPAddressConfiguration'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

