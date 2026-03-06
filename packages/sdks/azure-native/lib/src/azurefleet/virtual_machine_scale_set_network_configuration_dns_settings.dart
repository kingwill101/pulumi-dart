// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a virtual machines scale sets network configuration's DNS settings.
class VirtualMachineScaleSetNetworkConfigurationDnsSettings {
  /// List of DNS servers IP addresses
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [VirtualMachineScaleSetNetworkConfigurationDnsSettings].
  /// [dnsServers] List of DNS servers IP addresses
  const VirtualMachineScaleSetNetworkConfigurationDnsSettings({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualMachineScaleSetNetworkConfigurationDnsSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfigurationDnsSettings(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

