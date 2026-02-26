// ignore_for_file: unused_element, unnecessary_cast

/// Represents the common parameters for all the hosts irrespective of their IP address.
class VmwareHostConfigResponse {
  /// DNS search domains.
  final List<String> dnsSearchDomains;

  /// DNS servers.
  final List<String> dnsServers;

  /// NTP servers.
  final List<String> ntpServers;

  VmwareHostConfigResponse({
    required this.dnsSearchDomains,
    required this.dnsServers,
    required this.ntpServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsSearchDomains'] = dnsSearchDomains;
    map['dnsServers'] = dnsServers;
    map['ntpServers'] = ntpServers;
    return map;
  }

  factory VmwareHostConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareHostConfigResponse(
      dnsSearchDomains: (map['dnsSearchDomains'] as List).cast<String>(),
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      ntpServers: (map['ntpServers'] as List).cast<String>(),
    );
  }
}
