// ignore_for_file: unused_element, unnecessary_cast

/// Represents the common parameters for all the hosts irrespective of their IP address.
class VmwareHostConfig {
  /// DNS search domains.
  final List<String>? dnsSearchDomains;

  /// DNS servers.
  final List<String>? dnsServers;

  /// NTP servers.
  final List<String>? ntpServers;

  /// Creates a new [VmwareHostConfig].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  VmwareHostConfig({this.dnsSearchDomains, this.dnsServers, this.ntpServers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomains': ?dnsSearchDomains,
      'dnsServers': ?dnsServers,
      'ntpServers': ?ntpServers,
    };
  }

  factory VmwareHostConfig.fromMap(Map<String, dynamic> map) {
    return VmwareHostConfig(
      dnsSearchDomains: map['dnsSearchDomains'] == null
          ? null
          : (map['dnsSearchDomains'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null
          ? null
          : (map['dnsServers'] as List).cast<String>(),
      ntpServers: map['ntpServers'] == null
          ? null
          : (map['ntpServers'] as List).cast<String>(),
    );
  }
}
