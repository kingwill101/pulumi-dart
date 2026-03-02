// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a virtual machines network configuration's DNS settings.
class VirtualMachineNetworkInterfaceDnsSettingsConfiguration {
  /// List of DNS servers IP addresses
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [VirtualMachineNetworkInterfaceDnsSettingsConfiguration].
  /// [dnsServers] List of DNS servers IP addresses
  VirtualMachineNetworkInterfaceDnsSettingsConfiguration({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualMachineNetworkInterfaceDnsSettingsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceDnsSettingsConfiguration(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
    );
  }
}

