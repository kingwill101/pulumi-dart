// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterNetworkConfigHostConfig {
  /// DNS search domains.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedNetworkConfigControlPlaneV2Config"" pulumi-lang-dotnet=""NestedNetworkConfigControlPlaneV2Config"" pulumi-lang-go=""nestedNetworkConfigControlPlaneV2Config"" pulumi-lang-python=""nested_network_config_control_plane_v2_config"" pulumi-lang-yaml=""nestedNetworkConfigControlPlaneV2Config"" pulumi-lang-java=""nestedNetworkConfigControlPlaneV2Config"">"nested_network_config_control_plane_v2_config"</span>></a>The <span pulumi-lang-nodejs="`controlPlaneV2Config`" pulumi-lang-dotnet="`ControlPlaneV2Config`" pulumi-lang-go="`controlPlaneV2Config`" pulumi-lang-python="`control_plane_v2_config`" pulumi-lang-yaml="`controlPlaneV2Config`" pulumi-lang-java="`controlPlaneV2Config`">`control_plane_v2_config`</span> block supports:
  final List<String>? dnsSearchDomains;

  /// DNS servers.
  final List<String>? dnsServers;

  /// NTP servers.
  final List<String>? ntpServers;

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
