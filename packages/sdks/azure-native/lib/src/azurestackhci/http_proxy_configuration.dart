// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP Proxy configuration for the VM.
class HttpProxyConfiguration {
  /// The HTTP proxy server endpoint to use.
  final pulumi.Input<String>? httpProxy;
  /// The HTTPS proxy server endpoint to use.
  final pulumi.Input<String>? httpsProxy;
  /// The endpoints that should not go through proxy.
  final pulumi.Input<List<String>>? noProxy;
  /// Alternative CA cert to use for connecting to proxy servers.
  final pulumi.Input<String>? trustedCa;

  /// Creates a new [HttpProxyConfiguration].
  /// [httpProxy] The HTTP proxy server endpoint to use.
  /// [httpsProxy] The HTTPS proxy server endpoint to use.
  /// [noProxy] The endpoints that should not go through proxy.
  /// [trustedCa] Alternative CA cert to use for connecting to proxy servers.
  HttpProxyConfiguration({
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

  factory HttpProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfiguration(
      httpProxy: map['httpProxy'] == null ? null : (map['httpProxy'] as String).input(),
      httpsProxy: map['httpsProxy'] == null ? null : (map['httpsProxy'] as String).input(),
      noProxy: map['noProxy'] == null ? null : ((map['noProxy'] as List).cast<String>()).input(),
      trustedCa: map['trustedCa'] == null ? null : (map['trustedCa'] as String).input(),
    );
  }
}

