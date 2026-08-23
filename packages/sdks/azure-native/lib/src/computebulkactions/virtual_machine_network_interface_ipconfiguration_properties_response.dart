// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_public_ipaddress_configuration_response.dart';

/// Describes a virtual machine network interface IP configuration properties.
class VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse {
  /// Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  final pulumi.Input<List<SubResourceResponse>>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final pulumi.Input<List<SubResourceResponse>>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  final pulumi.Input<List<SubResourceResponse>>? loadBalancerBackendAddressPools;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final pulumi.Input<VirtualMachinePublicIPAddressConfigurationResponse>? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final pulumi.Input<SubResourceResponse>? subnet;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway.
  /// [applicationSecurityGroups] Specifies an array of references to application security group.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer].
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  /// [privateIPAddressVersion] Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAddressConfiguration] The publicIPAddressConfiguration.
  /// [subnet] Specifies the identifier of the subnet.
  const VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    this.loadBalancerBackendAddressPools,
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
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressConfigurationResponse, Map<String, dynamic>>(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse(
      applicationGatewayBackendAddressPools: (() { final guardedValue = map['applicationGatewayBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerBackendAddressPools: (() { final guardedValue = map['loadBalancerBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddressConfiguration: (() { final guardedValue = map['publicIPAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePublicIPAddressConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
