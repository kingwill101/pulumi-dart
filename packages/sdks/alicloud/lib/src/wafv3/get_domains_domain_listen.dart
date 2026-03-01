// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainListen {
  /// The ID of the certificate to be added. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final String certId;
  /// The type of encryption suite to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final int cipherSuite;
  /// The specific custom encryption suite to add.
  final List<String> customCiphers;
  /// Whether TSL1.3 version is supported. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final bool enableTlsv3;
  /// Whether to enable exclusive IP address. This parameter is used only when the value of **ipv6_enabled** is **false** (indicating that IPv6 is not enabled) and the value of **protection_resource** is **share** (indicating that a shared cluster is used).
  final bool exclusiveIp;
  /// Whether to enable the forced jump of HTTPS. This parameter is used only when the value of `https_ports` is not empty (indicating that the domain name uses HTTPS protocol) and the value of httports is empty (indicating that the domain name does not use HTTP protocol).
  final bool focusHttps;
  /// Whether to turn on http2. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final bool http2Enabled;
  /// The listening port of the HTTP protocol.
  final List<int> httpPorts;
  /// The listening port of the HTTPS protocol.
  final List<int> httpsPorts;
  /// Whether IPv6 is turned on.
  final bool ipv6Enabled;
  /// The type of protection resource to use.
  final String protectionResource;
  /// The version of TLS to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final String tlsVersion;
  /// WAF obtains the real IP address of the client.
  final int xffHeaderMode;
  /// Set the list of custom fields used to obtain the client IP address.
  final List<String> xffHeaders;

  /// Creates a new [GetDomainsDomainListen].
  /// [certId] The ID of the certificate to be added. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [cipherSuite] The type of encryption suite to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [customCiphers] The specific custom encryption suite to add.
  /// [enableTlsv3] Whether TSL1.3 version is supported. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [exclusiveIp] Whether to enable exclusive IP address. This parameter is used only when the value of **ipv6_enabled** is **false** (indicating that IPv6 is not enabled) and the value of **protection_resource** is **share** (indicating that a shared cluster is used).
  /// [focusHttps] Whether to enable the forced jump of HTTPS. This parameter is used only when the value of `https_ports` is not empty (indicating that the domain name uses HTTPS protocol) and the value of httports is empty (indicating that the domain name does not use HTTP protocol).
  /// [http2Enabled] Whether to turn on http2. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [httpPorts] The listening port of the HTTP protocol.
  /// [httpsPorts] The listening port of the HTTPS protocol.
  /// [ipv6Enabled] Whether IPv6 is turned on.
  /// [protectionResource] The type of protection resource to use.
  /// [tlsVersion] The version of TLS to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [xffHeaderMode] WAF obtains the real IP address of the client.
  /// [xffHeaders] Set the list of custom fields used to obtain the client IP address.
  GetDomainsDomainListen({
    required this.certId,
    required this.cipherSuite,
    required this.customCiphers,
    required this.enableTlsv3,
    required this.exclusiveIp,
    required this.focusHttps,
    required this.http2Enabled,
    required this.httpPorts,
    required this.httpsPorts,
    required this.ipv6Enabled,
    required this.protectionResource,
    required this.tlsVersion,
    required this.xffHeaderMode,
    required this.xffHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': certId,
      'cipherSuite': cipherSuite,
      'customCiphers': customCiphers,
      'enableTlsv3': enableTlsv3,
      'exclusiveIp': exclusiveIp,
      'focusHttps': focusHttps,
      'http2Enabled': http2Enabled,
      'httpPorts': httpPorts,
      'httpsPorts': httpsPorts,
      'ipv6Enabled': ipv6Enabled,
      'protectionResource': protectionResource,
      'tlsVersion': tlsVersion,
      'xffHeaderMode': xffHeaderMode,
      'xffHeaders': xffHeaders,
    };
  }

  factory GetDomainsDomainListen.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainListen(
      certId: map['certId'] as String,
      cipherSuite: map['cipherSuite'] as int,
      customCiphers: (map['customCiphers'] as List).cast<String>(),
      enableTlsv3: map['enableTlsv3'] as bool,
      exclusiveIp: map['exclusiveIp'] as bool,
      focusHttps: map['focusHttps'] as bool,
      http2Enabled: map['http2Enabled'] as bool,
      httpPorts: (map['httpPorts'] as List).cast<int>(),
      httpsPorts: (map['httpsPorts'] as List).cast<int>(),
      ipv6Enabled: map['ipv6Enabled'] as bool,
      protectionResource: map['protectionResource'] as String,
      tlsVersion: map['tlsVersion'] as String,
      xffHeaderMode: map['xffHeaderMode'] as int,
      xffHeaders: (map['xffHeaders'] as List).cast<String>(),
    );
  }
}

