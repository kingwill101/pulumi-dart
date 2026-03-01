// ignore_for_file: unused_element, unnecessary_cast


/// Web proxy configuration.
class WebProxyConfiguration {
  /// Bypass list for the web proxy.
  final List<String>? bypassList;
  /// Connection URI of the web proxy.
  final String? connectionUri;
  /// Port of the web proxy.
  final String? port;

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
      bypassList: map['bypassList'] == null ? null : (map['bypassList'] as List).cast<String>(),
      connectionUri: map['connectionUri'] == null ? null : map['connectionUri'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

