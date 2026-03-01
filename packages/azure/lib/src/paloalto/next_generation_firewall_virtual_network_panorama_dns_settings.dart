// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkPanoramaDnsSettings {
  final List<String>? azureDnsServers;
  /// Specifies a list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  final List<String>? dnsServers;
  /// Should the Firewall use Azure Supplied DNS servers. Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  final bool? useAzureDns;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDnsSettings].
  /// [azureDnsServers] Optional.
  /// [dnsServers] Specifies a list of DNS servers to use. Conflicts with `dns_settings[0].use_azure_dns`.
  /// [useAzureDns] Should the Firewall use Azure Supplied DNS servers. Conflicts with `dns_settings[0].dns_servers`. Defaults to `false`.
  NextGenerationFirewallVirtualNetworkPanoramaDnsSettings({
    this.azureDnsServers,
    this.dnsServers,
    this.useAzureDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDnsServers': ?azureDnsServers,
      'dnsServers': ?dnsServers,
      'useAzureDns': ?useAzureDns,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaDnsSettings(
      azureDnsServers: map['azureDnsServers'] == null ? null : (map['azureDnsServers'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      useAzureDns: map['useAzureDns'] == null ? null : map['useAzureDns'] as bool,
    );
  }
}

