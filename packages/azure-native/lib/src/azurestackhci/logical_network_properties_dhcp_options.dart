// ignore_for_file: unused_element, unnecessary_cast


/// DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
class LogicalNetworkPropertiesDhcpOptions {
  /// The list of DNS servers IP addresses.
  final List<String>? dnsServers;

  /// Creates a new [LogicalNetworkPropertiesDhcpOptions].
  /// [dnsServers] The list of DNS servers IP addresses.
  LogicalNetworkPropertiesDhcpOptions({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory LogicalNetworkPropertiesDhcpOptions.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkPropertiesDhcpOptions(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

