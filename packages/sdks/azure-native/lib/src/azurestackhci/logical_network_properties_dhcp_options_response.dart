// ignore_for_file: unused_element, unnecessary_cast


/// DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
class LogicalNetworkPropertiesDhcpOptionsResponse {
  /// The list of DNS servers IP addresses.
  final List<String>? dnsServers;

  /// Creates a new [LogicalNetworkPropertiesDhcpOptionsResponse].
  /// [dnsServers] The list of DNS servers IP addresses.
  LogicalNetworkPropertiesDhcpOptionsResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory LogicalNetworkPropertiesDhcpOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkPropertiesDhcpOptionsResponse(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

