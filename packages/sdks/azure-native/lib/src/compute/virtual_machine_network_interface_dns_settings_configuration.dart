// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a virtual machines network configuration's DNS settings.
class VirtualMachineNetworkInterfaceDnsSettingsConfiguration {
  /// List of DNS servers IP addresses
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [VirtualMachineNetworkInterfaceDnsSettingsConfiguration].
  /// [dnsServers] List of DNS servers IP addresses
  const VirtualMachineNetworkInterfaceDnsSettingsConfiguration({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualMachineNetworkInterfaceDnsSettingsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceDnsSettingsConfiguration(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

