// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations for provisioning the cluster with HTTP proxy servers.
class HttpProxyConfig {
  /// The HTTP proxy server endpoint to use.
  final pulumi.Input<String>? httpProxy;
  /// The HTTPS proxy server endpoint to use.
  final pulumi.Input<String>? httpsProxy;
  /// The endpoints that should not go through proxy.
  final pulumi.Input<List<String>>? noProxy;
  /// Password to use for connecting to proxy server
  final pulumi.Input<String>? password;
  /// Alternative CA cert to use for connecting to proxy servers.
  final pulumi.Input<String>? trustedCa;
  /// Username to use for connecting to proxy server
  final pulumi.Input<String>? username;

  /// Creates a new [HttpProxyConfig].
  /// [httpProxy] The HTTP proxy server endpoint to use.
  /// [httpsProxy] The HTTPS proxy server endpoint to use.
  /// [noProxy] The endpoints that should not go through proxy.
  /// [password] Password to use for connecting to proxy server
  /// [trustedCa] Alternative CA cert to use for connecting to proxy servers.
  /// [username] Username to use for connecting to proxy server
  HttpProxyConfig({
    this.httpProxy,
    this.httpsProxy,
    this.noProxy,
    this.password,
    this.trustedCa,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'noProxy': ?noProxy,
      'password': ?password,
      'trustedCa': ?trustedCa,
      'username': ?username,
    };
  }

  factory HttpProxyConfig.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfig(
      httpProxy: map['httpProxy'] == null ? null : (map['httpProxy'] as String).input(),
      httpsProxy: map['httpsProxy'] == null ? null : (map['httpsProxy'] as String).input(),
      noProxy: map['noProxy'] == null ? null : ((map['noProxy'] as List).cast<String>()).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      trustedCa: map['trustedCa'] == null ? null : (map['trustedCa'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

