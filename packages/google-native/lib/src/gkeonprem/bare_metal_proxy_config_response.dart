// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the cluster proxy configuration.
class BareMetalProxyConfigResponse {
  /// A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final List<String> noProxy;

  /// Specifies the address of your proxy server. Examples: `http://domain` Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  final String uri;

  /// Creates a new [BareMetalProxyConfigResponse].
  /// [noProxy] A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "example.com", ".corp", "localhost"].
  /// [uri] Specifies the address of your proxy server. Examples: `http://domain` Do not provide credentials in the format `http://(username:password@)domain` these will be rejected by the server.
  BareMetalProxyConfigResponse({required this.noProxy, required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noProxy': noProxy, 'uri': uri};
  }

  factory BareMetalProxyConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalProxyConfigResponse(
      noProxy: (map['noProxy'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
