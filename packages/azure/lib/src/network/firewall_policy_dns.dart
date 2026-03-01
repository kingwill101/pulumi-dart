// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyDns {
  /// Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to `false`.
  final bool? proxyEnabled;
  /// A list of custom DNS servers' IP addresses.
  final List<String>? servers;

  /// Creates a new [FirewallPolicyDns].
  /// [proxyEnabled] Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to `false`.
  /// [servers] A list of custom DNS servers' IP addresses.
  FirewallPolicyDns({
    this.proxyEnabled,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyEnabled': ?proxyEnabled,
      'servers': ?servers,
    };
  }

  factory FirewallPolicyDns.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyDns(
      proxyEnabled: map['proxyEnabled'] == null ? null : map['proxyEnabled'] as bool,
      servers: map['servers'] == null ? null : (map['servers'] as List).cast<String>(),
    );
  }
}

