// ignore_for_file: unused_element, unnecessary_cast


/// DNS Proxy Settings in Firewall Policy.
class DnsSettings {
  /// Enable DNS Proxy on Firewalls attached to the Firewall Policy.
  final bool? enableProxy;
  /// FQDNs in Network Rules are supported when set to true.
  final bool? requireProxyForNetworkRules;
  /// List of Custom DNS Servers.
  final List<String>? servers;

  /// Creates a new [DnsSettings].
  /// [enableProxy] Enable DNS Proxy on Firewalls attached to the Firewall Policy.
  /// [requireProxyForNetworkRules] FQDNs in Network Rules are supported when set to true.
  /// [servers] List of Custom DNS Servers.
  DnsSettings({
    this.enableProxy,
    this.requireProxyForNetworkRules,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableProxy': ?enableProxy,
      'requireProxyForNetworkRules': ?requireProxyForNetworkRules,
      'servers': ?servers,
    };
  }

  factory DnsSettings.fromMap(Map<String, dynamic> map) {
    return DnsSettings(
      enableProxy: map['enableProxy'] == null ? null : map['enableProxy'] as bool,
      requireProxyForNetworkRules: map['requireProxyForNetworkRules'] == null ? null : map['requireProxyForNetworkRules'] as bool,
      servers: map['servers'] == null ? null : (map['servers'] as List).cast<String>(),
    );
  }
}

