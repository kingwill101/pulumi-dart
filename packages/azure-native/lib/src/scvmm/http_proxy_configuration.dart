// ignore_for_file: unused_element, unnecessary_cast


/// HTTP Proxy configuration for the VM.
class HttpProxyConfiguration {
  /// Gets or sets httpsProxy url.
  final String? httpsProxy;

  /// Creates a new [HttpProxyConfiguration].
  /// [httpsProxy] Gets or sets httpsProxy url.
  HttpProxyConfiguration({
    this.httpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsProxy': ?httpsProxy,
    };
  }

  factory HttpProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfiguration(
      httpsProxy: map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
    );
  }
}

