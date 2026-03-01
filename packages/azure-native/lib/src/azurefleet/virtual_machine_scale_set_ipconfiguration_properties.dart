// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'sub_resource.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration.dart';

/// Describes a virtual machine scale set network profile's IP configuration
/// properties.
class VirtualMachineScaleSetIPConfigurationProperties {
  /// Specifies an array of references to backend address pools of application
  /// gateways. A scale set can reference backend address pools of multiple
  /// application gateways. Multiple scale sets cannot use the same application
  /// gateway.
  final List<SubResource>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to application security group.
  final List<SubResource>? applicationSecurityGroups;
  /// Specifies an array of references to backend address pools of load balancers. A
  /// scale set can reference backend address pools of one public and one internal
  /// load balancer. Multiple scale sets cannot use the same basic sku load balancer.
  final List<SubResource>? loadBalancerBackendAddressPools;
  /// Specifies an array of references to inbound Nat pools of the load balancers. A
  /// scale set can reference inbound nat pools of one public and one internal load
  /// balancer. Multiple scale sets cannot use the same basic sku load balancer.
  final List<SubResource>? loadBalancerInboundNatPools;
  /// Specifies the primary network interface in case the virtual machine has more
  /// than 1 network interface.
  final bool? primary;
  /// Available from Api-Version 2017-03-30 onwards, it represents whether the
  /// specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible
  /// values are: 'IPv4' and 'IPv6'.
  final String? privateIPAddressVersion;
  /// The publicIPAddressConfiguration.
  final VirtualMachineScaleSetPublicIPAddressConfiguration? publicIPAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final ApiEntityReference? subnet;

  /// Creates a new [VirtualMachineScaleSetIPConfigurationProperties].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application
  /// [applicationSecurityGroups] Specifies an array of references to application security group.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A
  /// [loadBalancerInboundNatPools] Specifies an array of references to inbound Nat pools of the load balancers. A
  /// [primary] Specifies the primary network interface in case the virtual machine has more
  /// [privateIPAddressVersion] Available from Api-Version 2017-03-30 onwards, it represents whether the
  /// [publicIPAddressConfiguration] The publicIPAddressConfiguration.
  /// [subnet] Specifies the identifier of the subnet.
  VirtualMachineScaleSetIPConfigurationProperties({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatPools,
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
      'loadBalancerInboundNatPools': ?loadBalancerInboundNatPools == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(loadBalancerInboundNatPools!, (value) => value.toMap()),
      'primary': ?primary,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?publicIPAddressConfiguration == null ? null : publicIPAddressConfiguration!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory VirtualMachineScaleSetIPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIPConfigurationProperties(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['applicationGatewayBackendAddressPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<SubResource>(map['applicationSecurityGroups'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['loadBalancerBackendAddressPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerInboundNatPools: map['loadBalancerInboundNatPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['loadBalancerInboundNatPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : VirtualMachineScaleSetPublicIPAddressConfiguration.fromMap((map['publicIPAddressConfiguration'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : ApiEntityReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

