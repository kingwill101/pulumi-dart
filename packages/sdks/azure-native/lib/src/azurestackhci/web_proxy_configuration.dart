// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web proxy configuration.
class WebProxyConfiguration {
  /// Bypass list for the web proxy.
  final pulumi.Input<List<String>>? bypassList;
  /// Connection URI of the web proxy.
  final pulumi.Input<String>? connectionUri;
  /// Port of the web proxy.
  final pulumi.Input<String>? port;

  /// Creates a new [WebProxyConfiguration].
  /// [bypassList] Bypass list for the web proxy.
  /// [connectionUri] Connection URI of the web proxy.
  /// [port] Port of the web proxy.
  WebProxyConfiguration({
    this.bypassList,
    this.connectionUri,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassList': ?bypassList,
      'connectionUri': ?connectionUri,
      'port': ?port,
    };
  }

  factory WebProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return WebProxyConfiguration(
      bypassList: (() { final guardedValue = map['bypassList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionUri: (() { final guardedValue = map['connectionUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

