// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminProxyConfig specifies the cluster proxy configuration.
class BareMetalAdminProxyConfigResponse {
  /// A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final List<String> noProxy;

  /// Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  final String uri;

  /// Creates a new [BareMetalAdminProxyConfigResponse].
  /// [noProxy] A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  /// [uri] Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  BareMetalAdminProxyConfigResponse({
    required this.noProxy,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noProxy'] = noProxy;
    map['uri'] = uri;
    return map;
  }

  factory BareMetalAdminProxyConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminProxyConfigResponse(
      noProxy: (map['noProxy'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
