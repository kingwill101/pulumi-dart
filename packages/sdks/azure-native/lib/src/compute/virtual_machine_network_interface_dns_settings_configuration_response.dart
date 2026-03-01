// ignore_for_file: unused_element, unnecessary_cast


/// Describes a virtual machines network configuration's DNS settings.
class VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse {
  /// List of DNS servers IP addresses
  final List<String>? dnsServers;

  /// Creates a new [VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse].
  /// [dnsServers] List of DNS servers IP addresses
  VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceDnsSettingsConfigurationResponse(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

