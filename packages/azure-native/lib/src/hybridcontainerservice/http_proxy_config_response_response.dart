// ignore_for_file: unused_element, unnecessary_cast


/// Configurations for provisioning the cluster with HTTP proxy servers.
class HttpProxyConfigResponseResponse {
  /// The HTTP proxy server endpoint to use.
  final String? httpProxy;
  /// The HTTPS proxy server endpoint to use.
  final String? httpsProxy;
  /// The endpoints that should not go through proxy.
  final List<String>? noProxy;
  /// Alternative CA cert to use for connecting to proxy servers.
  final String? trustedCa;
  /// Username to use for connecting to proxy server
  final String? username;

  /// Creates a new [HttpProxyConfigResponseResponse].
  /// [httpProxy] The HTTP proxy server endpoint to use.
  /// [httpsProxy] The HTTPS proxy server endpoint to use.
  /// [noProxy] The endpoints that should not go through proxy.
  /// [trustedCa] Alternative CA cert to use for connecting to proxy servers.
  /// [username] Username to use for connecting to proxy server
  HttpProxyConfigResponseResponse({
    this.httpProxy,
    this.httpsProxy,
    this.noProxy,
    this.trustedCa,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'noProxy': ?noProxy,
      'trustedCa': ?trustedCa,
      'username': ?username,
    };
  }

  factory HttpProxyConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfigResponseResponse(
      httpProxy: map['httpProxy'] == null ? null : map['httpProxy'] as String,
      httpsProxy: map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
      noProxy: map['noProxy'] == null ? null : (map['noProxy'] as List).cast<String>(),
      trustedCa: map['trustedCa'] == null ? null : map['trustedCa'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

