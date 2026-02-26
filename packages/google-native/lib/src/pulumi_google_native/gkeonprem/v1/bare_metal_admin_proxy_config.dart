// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminProxyConfig specifies the cluster proxy configuration.
class BareMetalAdminProxyConfig {
  /// A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final List<String>? noProxy;

  /// Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  final String uri;

  BareMetalAdminProxyConfig({
    this.noProxy,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final noProxyValue = noProxy;
    if (noProxyValue != null) {
      map['noProxy'] = noProxyValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory BareMetalAdminProxyConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminProxyConfig(
      noProxy: map['noProxy'] == null
          ? null
          : (map['noProxy'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
