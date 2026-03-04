// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainListen {
  /// The ID of the certificate to be added. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<String> certId;

  /// The type of encryption suite to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<int> cipherSuite;

  /// The specific custom encryption suite to add.
  final pulumi.Input<List<String>> customCiphers;

  /// Whether TSL1.3 version is supported. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<bool> enableTlsv3;

  /// Whether to enable exclusive IP address. This parameter is used only when the value of **ipv6_enabled** is **false** (indicating that IPv6 is not enabled) and the value of **protection_resource** is **share** (indicating that a shared cluster is used).
  final pulumi.Input<bool> exclusiveIp;

  /// Whether to enable the forced jump of HTTPS. This parameter is used only when the value of `https_ports` is not empty (indicating that the domain name uses HTTPS protocol) and the value of httports is empty (indicating that the domain name does not use HTTP protocol).
  final pulumi.Input<bool> focusHttps;

  /// Whether to turn on http2. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<bool> http2Enabled;

  /// The listening port of the HTTP protocol.
  final pulumi.Input<List<int>> httpPorts;

  /// The listening port of the HTTPS protocol.
  final pulumi.Input<List<int>> httpsPorts;

  /// Whether IPv6 is turned on.
  final pulumi.Input<bool> ipv6Enabled;

  /// The type of protection resource to use.
  final pulumi.Input<String> protectionResource;

  /// The version of TLS to add. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<String> tlsVersion;

  /// WAF obtains the real IP address of the client.
  final pulumi.Input<int> xffHeaderMode;

  /// Set the list of custom fields used to obtain the client IP address.
  final pulumi.Input<List<String>> xffHeaders;

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
      certId: pulumi.Input.fromValue(map['certId'] as String),
      cipherSuite: pulumi.Input.fromValue(map['cipherSuite'] as int),
      customCiphers: pulumi.Input.fromValue(
        (map['customCiphers'] as List).cast<String>(),
      ),
      enableTlsv3: pulumi.Input.fromValue(map['enableTlsv3'] as bool),
      exclusiveIp: pulumi.Input.fromValue(map['exclusiveIp'] as bool),
      focusHttps: pulumi.Input.fromValue(map['focusHttps'] as bool),
      http2Enabled: pulumi.Input.fromValue(map['http2Enabled'] as bool),
      httpPorts: pulumi.Input.fromValue((map['httpPorts'] as List).cast<int>()),
      httpsPorts: pulumi.Input.fromValue(
        (map['httpsPorts'] as List).cast<int>(),
      ),
      ipv6Enabled: pulumi.Input.fromValue(map['ipv6Enabled'] as bool),
      protectionResource: pulumi.Input.fromValue(
        map['protectionResource'] as String,
      ),
      tlsVersion: pulumi.Input.fromValue(map['tlsVersion'] as String),
      xffHeaderMode: pulumi.Input.fromValue(map['xffHeaderMode'] as int),
      xffHeaders: pulumi.Input.fromValue(
        (map['xffHeaders'] as List).cast<String>(),
      ),
    );
  }
}
