// ignore_for_file: unused_element, unnecessary_cast


/// ProxyUrl configuration of cache node
class ProxyUrlConfigurationResponse {
  /// Host Proxy Address configuration along with port number. This can be a proxy or ip address. ex: xx.xx.xx.xxxx:80 or host name http://exampleproxy.com:80
  final String? proxyUrl;

  /// Creates a new [ProxyUrlConfigurationResponse].
  /// [proxyUrl] Host Proxy Address configuration along with port number. This can be a proxy or ip address. ex: xx.xx.xx.xxxx:80 or host name http://exampleproxy.com:80
  ProxyUrlConfigurationResponse({
    this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyUrl': ?proxyUrl,
    };
  }

  factory ProxyUrlConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ProxyUrlConfigurationResponse(
      proxyUrl: map['proxyUrl'] == null ? null : map['proxyUrl'] as String,
    );
  }
}

