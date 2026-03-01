// ignore_for_file: unused_element, unnecessary_cast


/// Cluster HTTP proxy configuration.
class ManagedClusterHTTPProxyConfig {
  /// The HTTP proxy server endpoint to use.
  final String? httpProxy;
  /// The HTTPS proxy server endpoint to use.
  final String? httpsProxy;
  /// The endpoints that should not go through proxy.
  final List<String>? noProxy;
  /// Alternative CA cert to use for connecting to proxy servers.
  final String? trustedCa;

  /// Creates a new [ManagedClusterHTTPProxyConfig].
  /// [httpProxy] The HTTP proxy server endpoint to use.
  /// [httpsProxy] The HTTPS proxy server endpoint to use.
  /// [noProxy] The endpoints that should not go through proxy.
  /// [trustedCa] Alternative CA cert to use for connecting to proxy servers.
  ManagedClusterHTTPProxyConfig({
    this.httpProxy,
    this.httpsProxy,
    this.noProxy,
    this.trustedCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'noProxy': ?noProxy,
      'trustedCa': ?trustedCa,
    };
  }

  factory ManagedClusterHTTPProxyConfig.fromMap(Map<String, dynamic> map) {
    return ManagedClusterHTTPProxyConfig(
      httpProxy: map['httpProxy'] == null ? null : map['httpProxy'] as String,
      httpsProxy: map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
      noProxy: map['noProxy'] == null ? null : (map['noProxy'] as List).cast<String>(),
      trustedCa: map['trustedCa'] == null ? null : map['trustedCa'] as String,
    );
  }
}

