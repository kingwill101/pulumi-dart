// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a virtual machines network configuration's DNS settings.
class VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse {
  /// List of DNS servers IP addresses
  final pulumi.Input<List<String>?>? dnsServers;

  /// Creates a new [VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse].
  /// [dnsServers] List of DNS servers IP addresses
  const VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
