// ignore_for_file: unused_element, unnecessary_cast


/// DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
class VirtualNetworkPropertiesResponseDhcpOptions {
  /// The list of DNS servers IP addresses.
  final List<String>? dnsServers;

  /// Creates a new [VirtualNetworkPropertiesResponseDhcpOptions].
  /// [dnsServers] The list of DNS servers IP addresses.
  VirtualNetworkPropertiesResponseDhcpOptions({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory VirtualNetworkPropertiesResponseDhcpOptions.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseDhcpOptions(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

