// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterProxy {
  /// A list of IPs, hostnames, and domains that should skip the proxy.
  /// For example: ["127.0.0.1", "example.com", ".corp", "localhost"].
  final List<String>? noProxies;

  /// Specifies the address of your proxy server.
  /// For Example: http://domain
  /// WARNING: Do not provide credentials in the format
  /// of http://(username:password@)domain these will be rejected by the server.
  final String uri;

  /// Creates a new [BareMetalAdminClusterProxy].
  /// [noProxies] A list of IPs, hostnames, and domains that should skip the proxy.
  /// [uri] Specifies the address of your proxy server.
  BareMetalAdminClusterProxy({this.noProxies, required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noProxies': ?noProxies, 'uri': uri};
  }

  factory BareMetalAdminClusterProxy.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterProxy(
      noProxies: map['noProxies'] == null
          ? null
          : (map['noProxies'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
