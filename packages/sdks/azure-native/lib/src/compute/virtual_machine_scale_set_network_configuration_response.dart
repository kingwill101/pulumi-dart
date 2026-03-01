// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_scale_set_ipconfiguration_response.dart';
import 'virtual_machine_scale_set_network_configuration_dns_settings_response.dart';

/// Describes a virtual machine scale set network profile's network configurations.
class VirtualMachineScaleSetNetworkConfigurationResponse {
  /// Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
  final String? auxiliaryMode;
  /// Specifies whether the Auxiliary sku is enabled for the Network Interface resource.
  final String? auxiliarySku;
  /// Specify what happens to the network interface when the VM is deleted
  final String? deleteOption;
  /// Specifies whether the network interface is disabled for tcp state tracking.
  final bool? disableTcpStateTracking;
  /// The dns settings to be applied on the network interfaces.
  final VirtualMachineScaleSetNetworkConfigurationDnsSettingsResponse? dnsSettings;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final bool? enableAcceleratedNetworking;
  /// Specifies whether the network interface is FPGA networking-enabled.
  final bool? enableFpga;
  /// Whether IP forwarding enabled on this NIC.
  final bool? enableIPForwarding;
  /// Specifies the IP configurations of the network interface.
  final List<VirtualMachineScaleSetIPConfigurationResponse> ipConfigurations;
  /// The network configuration name.
  final String name;
  /// The network security group.
  final SubResourceResponse? networkSecurityGroup;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final bool? primary;

  /// Creates a new [VirtualMachineScaleSetNetworkConfigurationResponse].
  /// [auxiliaryMode] Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
  /// [auxiliarySku] Specifies whether the Auxiliary sku is enabled for the Network Interface resource.
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [disableTcpStateTracking] Specifies whether the network interface is disabled for tcp state tracking.
  /// [dnsSettings] The dns settings to be applied on the network interfaces.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [enableFpga] Specifies whether the network interface is FPGA networking-enabled.
  /// [enableIPForwarding] Whether IP forwarding enabled on this NIC.
  /// [ipConfigurations] Specifies the IP configurations of the network interface.
  /// [name] The network configuration name.
  /// [networkSecurityGroup] The network security group.
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  VirtualMachineScaleSetNetworkConfigurationResponse({
    this.auxiliaryMode,
    this.auxiliarySku,
    this.deleteOption,
    this.disableTcpStateTracking,
    this.dnsSettings,
    this.enableAcceleratedNetworking,
    this.enableFpga,
    this.enableIPForwarding,
    required this.ipConfigurations,
    required this.name,
    this.networkSecurityGroup,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'deleteOption': ?deleteOption,
      'disableTcpStateTracking': ?disableTcpStateTracking,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableFpga': ?enableFpga,
      'enableIPForwarding': ?enableIPForwarding,
      'ipConfigurations': pulumi.Input.encodeList<VirtualMachineScaleSetIPConfigurationResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
      'primary': ?primary,
    };
  }

  factory VirtualMachineScaleSetNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfigurationResponse(
      auxiliaryMode: map['auxiliaryMode'] == null ? null : map['auxiliaryMode'] as String,
      auxiliarySku: map['auxiliarySku'] == null ? null : map['auxiliarySku'] as String,
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      disableTcpStateTracking: map['disableTcpStateTracking'] == null ? null : map['disableTcpStateTracking'] as bool,
      dnsSettings: map['dnsSettings'] == null ? null : VirtualMachineScaleSetNetworkConfigurationDnsSettingsResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : map['enableAcceleratedNetworking'] as bool,
      enableFpga: map['enableFpga'] == null ? null : map['enableFpga'] as bool,
      enableIPForwarding: map['enableIPForwarding'] == null ? null : map['enableIPForwarding'] as bool,
      ipConfigurations: pulumi.Input.decodeList<VirtualMachineScaleSetIPConfigurationResponse>(map['ipConfigurations'], (value) => VirtualMachineScaleSetIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : SubResourceResponse.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

