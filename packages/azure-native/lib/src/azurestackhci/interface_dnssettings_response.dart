// ignore_for_file: unused_element, unnecessary_cast


/// DNS Settings of the interface
class InterfaceDNSSettingsResponse {
  /// List of DNS server IP Addresses for the interface
  final List<String>? dnsServers;

  /// Creates a new [InterfaceDNSSettingsResponse].
  /// [dnsServers] List of DNS server IP Addresses for the interface
  InterfaceDNSSettingsResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory InterfaceDNSSettingsResponse.fromMap(Map<String, dynamic> map) {
    return InterfaceDNSSettingsResponse(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

