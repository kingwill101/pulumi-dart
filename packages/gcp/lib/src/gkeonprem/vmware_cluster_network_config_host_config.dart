// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterNetworkConfigHostConfig {
  /// DNS search domains.
  ///
  /// <a name="nested_network_config_control_plane_v2_config"></a>The `control_plane_v2_config` block supports:
  final List<String>? dnsSearchDomains;

  /// DNS servers.
  final List<String>? dnsServers;

  /// NTP servers.
  final List<String>? ntpServers;

  /// Creates a new [VMwareClusterNetworkConfigHostConfig].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  VMwareClusterNetworkConfigHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsSearchDomainsValue = dnsSearchDomains;
    if (dnsSearchDomainsValue != null) {
      map['dnsSearchDomains'] = dnsSearchDomainsValue;
    }
    final dnsServersValue = dnsServers;
    if (dnsServersValue != null) {
      map['dnsServers'] = dnsServersValue;
    }
    final ntpServersValue = ntpServers;
    if (ntpServersValue != null) {
      map['ntpServers'] = ntpServersValue;
    }
    return map;
  }

  factory VMwareClusterNetworkConfigHostConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigHostConfig(
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
