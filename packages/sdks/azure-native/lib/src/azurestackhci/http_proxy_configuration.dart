// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP Proxy configuration for the VM.
class HttpProxyConfiguration {
  /// The HTTP proxy server endpoint to use.
  final pulumi.Input<String?>? httpProxy;
  /// The HTTPS proxy server endpoint to use.
  final pulumi.Input<String?>? httpsProxy;
  /// The endpoints that should not go through proxy.
  final pulumi.Input<List<String>?>? noProxy;
  /// Alternative CA cert to use for connecting to proxy servers.
  final pulumi.Input<String?>? trustedCa;

  /// Creates a new [HttpProxyConfiguration].
  /// [httpProxy] The HTTP proxy server endpoint to use.
  /// [httpsProxy] The HTTPS proxy server endpoint to use.
  /// [noProxy] The endpoints that should not go through proxy.
  /// [trustedCa] Alternative CA cert to use for connecting to proxy servers.
  const HttpProxyConfiguration({
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
      httpProxy: (() { final guardedValue = map['httpProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noProxy: (() { final guardedValue = map['noProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedCa: (() { final guardedValue = map['trustedCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
