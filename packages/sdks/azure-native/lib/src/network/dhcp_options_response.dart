// ignore_for_file: unused_element, unnecessary_cast


/// DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
class DhcpOptionsResponse {
  /// The list of DNS servers IP addresses.
  final List<String>? dnsServers;

  /// Creates a new [DhcpOptionsResponse].
  /// [dnsServers] The list of DNS servers IP addresses.
  DhcpOptionsResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory DhcpOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DhcpOptionsResponse(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

