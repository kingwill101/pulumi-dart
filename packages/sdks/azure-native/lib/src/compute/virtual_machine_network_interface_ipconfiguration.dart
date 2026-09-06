// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'virtual_machine_public_ipaddress_configuration.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfiguration {
  /// Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  final pulumi.Input<List<SubResource>?>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final pulumi.Input<List<SubResource>?>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  final pulumi.Input<List<SubResource>?>? loadBalancerBackendAddressPools;
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool?>? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<dynamic>? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final pulumi.Input<VirtualMachinePublicIPAddressConfiguration?>? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final pulumi.Input<SubResource?>? subnet;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfiguration].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  /// [applicationSecurityGroups] Specifies an array of references to application security group.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  /// [name] The IP configuration name.
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  /// [privateIPAddressVersion] Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAddressConfiguration] The publicIPAddressConfiguration.
  /// [subnet] Specifies the identifier of the subnet.
  const VirtualMachineNetworkInterfaceIPConfiguration({
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
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressConfiguration, Map<String, dynamic>>(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfiguration(
      applicationGatewayBackendAddressPools: (() { final guardedValue = map['applicationGatewayBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerBackendAddressPools: (() { final guardedValue = map['loadBalancerBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIPAddressConfiguration: (() { final guardedValue = map['publicIPAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePublicIPAddressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
