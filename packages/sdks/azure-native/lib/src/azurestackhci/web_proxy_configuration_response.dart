// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web proxy configuration.
class WebProxyConfigurationResponse {
  /// Bypass list for the web proxy.
  final pulumi.Input<List<String>>? bypassList;
  /// Connection URI of the web proxy.
  final pulumi.Input<String>? connectionUri;
  /// Port of the web proxy.
  final pulumi.Input<String>? port;

  /// Creates a new [WebProxyConfigurationResponse].
  /// [bypassList] Bypass list for the web proxy.
  /// [connectionUri] Connection URI of the web proxy.
  /// [port] Port of the web proxy.
  WebProxyConfigurationResponse({
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

  factory WebProxyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WebProxyConfigurationResponse(
      bypassList: map['bypassList'] == null ? null : ((map['bypassList']! as List).cast<String>()).input(),
      connectionUri: map['connectionUri'] == null ? null : (map['connectionUri']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
    );
  }
}

