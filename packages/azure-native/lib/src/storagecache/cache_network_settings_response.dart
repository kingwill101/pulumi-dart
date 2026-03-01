// ignore_for_file: unused_element, unnecessary_cast


/// Cache network settings.
class CacheNetworkSettingsResponse {
  /// DNS search domain
  final String? dnsSearchDomain;
  /// DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  final List<String>? dnsServers;
  /// The IPv4 maximum transmission unit configured for the subnet.
  final int? mtu;
  /// NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  final String? ntpServer;
  /// Array of additional IP addresses used by this cache.
  final List<String> utilityAddresses;

  /// Creates a new [CacheNetworkSettingsResponse].
  /// [dnsSearchDomain] DNS search domain
  /// [dnsServers] DNS servers for the cache to use.  It will be set from the network configuration if no value is provided.
  /// [mtu] The IPv4 maximum transmission unit configured for the subnet.
  /// [ntpServer] NTP server IP Address or FQDN for the cache to use. The default is time.windows.com.
  /// [utilityAddresses] Array of additional IP addresses used by this cache.
  CacheNetworkSettingsResponse({
    this.dnsSearchDomain,
    this.dnsServers,
    this.mtu,
    this.ntpServer,
    required this.utilityAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomain': ?dnsSearchDomain,
      'dnsServers': ?dnsServers,
      'mtu': ?mtu,
      'ntpServer': ?ntpServer,
      'utilityAddresses': utilityAddresses,
    };
  }

  factory CacheNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheNetworkSettingsResponse(
      dnsSearchDomain: map['dnsSearchDomain'] == null ? null : map['dnsSearchDomain'] as String,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      ntpServer: map['ntpServer'] == null ? null : map['ntpServer'] as String,
      utilityAddresses: (map['utilityAddresses'] as List).cast<String>(),
    );
  }
}

