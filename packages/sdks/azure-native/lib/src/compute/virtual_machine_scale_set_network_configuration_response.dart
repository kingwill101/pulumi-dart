// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_machine_scale_set_ipconfiguration_response.dart';
import 'virtual_machine_scale_set_network_configuration_dns_settings_response.dart';

/// Describes a virtual machine scale set network profile's network configurations.
class VirtualMachineScaleSetNetworkConfigurationResponse {
  /// Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
  final pulumi.Input<String?>? auxiliaryMode;
  /// Specifies whether the Auxiliary sku is enabled for the Network Interface resource.
  final pulumi.Input<String?>? auxiliarySku;
  /// Specify what happens to the network interface when the VM is deleted
  final pulumi.Input<String?>? deleteOption;
  /// Specifies whether the network interface is disabled for tcp state tracking.
  final pulumi.Input<bool?>? disableTcpStateTracking;
  /// The dns settings to be applied on the network interfaces.
  final pulumi.Input<VirtualMachineScaleSetNetworkConfigurationDnsSettingsResponse?>? dnsSettings;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool?>? enableAcceleratedNetworking;
  /// Specifies whether the network interface is FPGA networking-enabled.
  final pulumi.Input<bool?>? enableFpga;
  /// Whether IP forwarding enabled on this NIC.
  final pulumi.Input<bool?>? enableIPForwarding;
  /// Specifies the IP configurations of the network interface.
  final pulumi.Input<List<VirtualMachineScaleSetIPConfigurationResponse>> ipConfigurations;
  /// The network configuration name.
  final pulumi.Input<String> name;
  /// The network security group.
  final pulumi.Input<SubResourceResponse?>? networkSecurityGroup;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool?>? primary;

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
  const VirtualMachineScaleSetNetworkConfigurationResponse({
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
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetNetworkConfigurationDnsSettingsResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableFpga': ?enableFpga,
      'enableIPForwarding': ?enableIPForwarding,
      'ipConfigurations': pulumi.Input.mapInputValue<List<VirtualMachineScaleSetIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'primary': ?primary,
    };
  }

  factory VirtualMachineScaleSetNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfigurationResponse(
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTcpStateTracking: (() { final guardedValue = map['disableTcpStateTracking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetNetworkConfigurationDnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFpga: (() { final guardedValue = map['enableFpga']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIPForwarding: (() { final guardedValue = map['enableIPForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetIPConfigurationResponse>(map['ipConfigurations']!, (value) => VirtualMachineScaleSetIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
