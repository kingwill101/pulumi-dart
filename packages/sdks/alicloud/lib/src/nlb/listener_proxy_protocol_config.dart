// ignore_for_file: unused_element, unnecessary_cast


class ListenerProxyProtocolConfig {
  /// Whether to enable carrying PrivateLinkEpId to backend servers through Proxy Protocol.
  final bool? proxyProtocolConfigPrivateLinkEpIdEnabled;
  /// Whether to enable carrying PrivateLinkEpsId to backend servers through the Proxy Protocol.
  final bool? proxyProtocolConfigPrivateLinkEpsIdEnabled;
  /// Whether to enable carrying VpcId to backend servers through Proxy Protocol.
  final bool? proxyProtocolConfigVpcIdEnabled;

  /// Creates a new [ListenerProxyProtocolConfig].
  /// [proxyProtocolConfigPrivateLinkEpIdEnabled] Whether to enable carrying PrivateLinkEpId to backend servers through Proxy Protocol.
  /// [proxyProtocolConfigPrivateLinkEpsIdEnabled] Whether to enable carrying PrivateLinkEpsId to backend servers through the Proxy Protocol.
  /// [proxyProtocolConfigVpcIdEnabled] Whether to enable carrying VpcId to backend servers through Proxy Protocol.
  ListenerProxyProtocolConfig({
    this.proxyProtocolConfigPrivateLinkEpIdEnabled,
    this.proxyProtocolConfigPrivateLinkEpsIdEnabled,
    this.proxyProtocolConfigVpcIdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyProtocolConfigPrivateLinkEpIdEnabled': ?proxyProtocolConfigPrivateLinkEpIdEnabled,
      'proxyProtocolConfigPrivateLinkEpsIdEnabled': ?proxyProtocolConfigPrivateLinkEpsIdEnabled,
      'proxyProtocolConfigVpcIdEnabled': ?proxyProtocolConfigVpcIdEnabled,
    };
  }

  factory ListenerProxyProtocolConfig.fromMap(Map<String, dynamic> map) {
    return ListenerProxyProtocolConfig(
      proxyProtocolConfigPrivateLinkEpIdEnabled: map['proxyProtocolConfigPrivateLinkEpIdEnabled'] == null ? null : map['proxyProtocolConfigPrivateLinkEpIdEnabled'] as bool,
      proxyProtocolConfigPrivateLinkEpsIdEnabled: map['proxyProtocolConfigPrivateLinkEpsIdEnabled'] == null ? null : map['proxyProtocolConfigPrivateLinkEpsIdEnabled'] as bool,
      proxyProtocolConfigVpcIdEnabled: map['proxyProtocolConfigVpcIdEnabled'] == null ? null : map['proxyProtocolConfigVpcIdEnabled'] as bool,
    );
  }
}

