// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_network_interface_dns_settings_configuration_response.dart';
import 'virtual_machine_network_interface_ipconfiguration_response.dart';

/// Describes a virtual machine network interface configurations.
class VirtualMachineNetworkInterfaceConfigurationResponse {
  /// Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
  final pulumi.Input<String>? auxiliaryMode;
  /// Specifies whether the Auxiliary sku is enabled for the Network Interface resource.
  final pulumi.Input<String>? auxiliarySku;
  /// Specify what happens to the network interface when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// Specifies whether the network interface is disabled for tcp state tracking.
  final pulumi.Input<bool>? disableTcpStateTracking;
  /// The dns settings to be applied on the network interfaces.
  final pulumi.Input<VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse>? dnsSettings;
  final pulumi.Input<SubResourceResponse>? dscpConfiguration;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Specifies whether the network interface is FPGA networking-enabled.
  final pulumi.Input<bool>? enableFpga;
  /// Whether IP forwarding enabled on this NIC.
  final pulumi.Input<bool>? enableIPForwarding;
  /// Specifies the IP configurations of the network interface.
  final pulumi.Input<List<VirtualMachineNetworkInterfaceIPConfigurationResponse>> ipConfigurations;
  /// The network interface configuration name.
  final pulumi.Input<String> name;
  /// The network security group.
  final pulumi.Input<SubResourceResponse>? networkSecurityGroup;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [VirtualMachineNetworkInterfaceConfigurationResponse].
  /// [auxiliaryMode] Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
  /// [auxiliarySku] Specifies whether the Auxiliary sku is enabled for the Network Interface resource.
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [disableTcpStateTracking] Specifies whether the network interface is disabled for tcp state tracking.
  /// [dnsSettings] The dns settings to be applied on the network interfaces.
  /// [dscpConfiguration] Optional.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [enableFpga] Specifies whether the network interface is FPGA networking-enabled.
  /// [enableIPForwarding] Whether IP forwarding enabled on this NIC.
  /// [ipConfigurations] Specifies the IP configurations of the network interface.
  /// [name] The network interface configuration name.
  /// [networkSecurityGroup] The network security group.
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  VirtualMachineNetworkInterfaceConfigurationResponse({
    this.auxiliaryMode,
    this.auxiliarySku,
    this.deleteOption,
    this.disableTcpStateTracking,
    this.dnsSettings,
    this.dscpConfiguration,
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
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'dscpConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(dscpConfiguration, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableFpga': ?enableFpga,
      'enableIPForwarding': ?enableIPForwarding,
      'ipConfigurations': pulumi.Input.mapInputValue<List<VirtualMachineNetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineNetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'primary': ?primary,
    };
  }

  factory VirtualMachineNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceConfigurationResponse(
      auxiliaryMode: map['auxiliaryMode'] == null ? null : (map['auxiliaryMode'] as String).input(),
      auxiliarySku: map['auxiliarySku'] == null ? null : (map['auxiliarySku'] as String).input(),
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      disableTcpStateTracking: map['disableTcpStateTracking'] == null ? null : (map['disableTcpStateTracking'] as bool).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      dscpConfiguration: map['dscpConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['dscpConfiguration'] as Map).cast<String, dynamic>())).input(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : (map['enableAcceleratedNetworking'] as bool).input(),
      enableFpga: map['enableFpga'] == null ? null : (map['enableFpga'] as bool).input(),
      enableIPForwarding: map['enableIPForwarding'] == null ? null : (map['enableIPForwarding'] as bool).input(),
      ipConfigurations: (pulumi.Input.decodeList<VirtualMachineNetworkInterfaceIPConfigurationResponse>(map['ipConfigurations'], (value) => VirtualMachineNetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : (SubResourceResponse.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>())).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
    );
  }
}

