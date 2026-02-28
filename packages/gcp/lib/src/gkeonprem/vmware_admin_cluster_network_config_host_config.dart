// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterNetworkConfigHostConfig {
  /// DNS search domains.
  final List<String>? dnsSearchDomains;
  /// DNS servers.
  final List<String>? dnsServers;
  /// NTP servers.
  final List<String>? ntpServers;

  /// Creates a new [VmwareAdminClusterNetworkConfigHostConfig].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  VmwareAdminClusterNetworkConfigHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomains': ?dnsSearchDomains,
      'dnsServers': ?dnsServers,
      'ntpServers': ?ntpServers,
    };
  }

  factory VmwareAdminClusterNetworkConfigHostConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigHostConfig(
      dnsSearchDomains: map['dnsSearchDomains'] == null ? null : (map['dnsSearchDomains'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      ntpServers: map['ntpServers'] == null ? null : (map['ntpServers'] as List).cast<String>(),
    );
  }
}

