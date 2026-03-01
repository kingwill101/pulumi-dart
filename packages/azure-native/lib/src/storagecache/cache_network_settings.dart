// ignore_for_file: unused_element, unnecessary_cast


/// Cache network settings.
class CacheNetworkSettings {
  /// DNS search domain
  final String? dnsSearchDomain;
  /// DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  final List<String>? dnsServers;
  /// The IPv4 maximum transmission unit configured for the subnet.
  final int? mtu;
  /// NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  final String? ntpServer;

  /// Creates a new [CacheNetworkSettings].
  /// [dnsSearchDomain] DNS search domain
  /// [dnsServers] DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  /// [mtu] The IPv4 maximum transmission unit configured for the subnet.
  /// [ntpServer] NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  CacheNetworkSettings({
    this.dnsSearchDomain,
    this.dnsServers,
    this.mtu,
    this.ntpServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomain': ?dnsSearchDomain,
      'dnsServers': ?dnsServers,
      'mtu': ?mtu,
      'ntpServer': ?ntpServer,
    };
  }

  factory CacheNetworkSettings.fromMap(Map<String, dynamic> map) {
    return CacheNetworkSettings(
      dnsSearchDomain: map['dnsSearchDomain'] == null ? null : map['dnsSearchDomain'] as String,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      ntpServer: map['ntpServer'] == null ? null : map['ntpServer'] as String,
    );
  }
}

