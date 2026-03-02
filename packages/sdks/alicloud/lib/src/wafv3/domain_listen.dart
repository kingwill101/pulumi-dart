// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainListen {
  /// The ID of the certificate to be added. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<String>? certId;
  /// The type of the cipher suites that you want to add. This parameter is available only if you specify `HttpsPorts`. Valid values:
  final pulumi.Input<int>? cipherSuite;
  /// The specific custom encryption suite to add.
  final pulumi.Input<List<String>>? customCiphers;
  /// Whether TSL1.3 version is supported. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol). Value:
  final pulumi.Input<bool>? enableTlsv3;
  /// Specifies whether to enable the exclusive IP address feature. This parameter is available only if you set `IPv6Enabled` to false and `ProtectionResource` to `share`. Valid values:
  final pulumi.Input<bool>? exclusiveIp;
  /// Specifies whether to enable force redirect from HTTP to HTTPS for received requests. This parameter is available only if you specify `HttpsPorts` and leave `HttpPorts` empty. Valid values:
  final pulumi.Input<bool>? focusHttps;
  /// Specifies whether to enable HTTP/2. This parameter is available only if you specify `HttpsPorts`. Valid values:
  final pulumi.Input<bool>? http2Enabled;
  /// The HTTP listener ports. Specify the value in the \[**port1,port2,...**] format.
  final pulumi.Input<List<int>>? httpPorts;
  /// The HTTPS listener ports. Specify the value in the \[**port1,port2,...**] format.
  final pulumi.Input<List<int>>? httpsPorts;
  /// Specifies whether to enable IPv6 protection. Valid values:
  final pulumi.Input<bool>? ipv6Enabled;
  /// The type of the protection resource. Valid values:
  final pulumi.Input<String>? protectionResource;
  /// Specifies whether to allow access only from SM certificate-based clients. This parameter is available only if you set SM2Enabled to true.
  ///
  /// - true
  /// - false
  final pulumi.Input<bool>? sm2AccessOnly;
  /// The ID of the SM certificate that you want to add. This parameter is available only if you set SM2Enabled to true.
  final pulumi.Input<String>? sm2CertId;
  /// Specifies whether to add an SM certificate.
  final pulumi.Input<bool>? sm2Enabled;
  /// The version of TLS to add. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol). Value:
  final pulumi.Input<String>? tlsVersion;
  /// The method that is used to obtain the originating IP address of a client. Valid values:
  final pulumi.Input<int>? xffHeaderMode;
  /// The custom header fields that are used to obtain the originating IP address of a client. Specify the value in the **\["header1","header2",...]** format.
  ///
  /// > **NOTE:**   This parameter is required only if you set `XffHeaderMode` to 2.
  final pulumi.Input<List<String>>? xffHeaders;

  /// Creates a new [DomainListen].
  /// [certId] The ID of the certificate to be added. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [cipherSuite] The type of the cipher suites that you want to add. This parameter is available only if you specify `HttpsPorts`. Valid values:
  /// [customCiphers] The specific custom encryption suite to add.
  /// [enableTlsv3] Whether TSL1.3 version is supported. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol). Value:
  /// [exclusiveIp] Specifies whether to enable the exclusive IP address feature. This parameter is available only if you set `IPv6Enabled` to false and `ProtectionResource` to `share`. Valid values:
  /// [focusHttps] Specifies whether to enable force redirect from HTTP to HTTPS for received requests. This parameter is available only if you specify `HttpsPorts` and leave `HttpPorts` empty. Valid values:
  /// [http2Enabled] Specifies whether to enable HTTP/2. This parameter is available only if you specify `HttpsPorts`. Valid values:
  /// [httpPorts] The HTTP listener ports. Specify the value in the \[**port1,port2,...**] format.
  /// [httpsPorts] The HTTPS listener ports. Specify the value in the \[**port1,port2,...**] format.
  /// [ipv6Enabled] Specifies whether to enable IPv6 protection. Valid values:
  /// [protectionResource] The type of the protection resource. Valid values:
  /// [sm2AccessOnly] Specifies whether to allow access only from SM certificate-based clients. This parameter is available only if you set SM2Enabled to true.
  /// [sm2CertId] The ID of the SM certificate that you want to add. This parameter is available only if you set SM2Enabled to true.
  /// [sm2Enabled] Specifies whether to add an SM certificate.
  /// [tlsVersion] The version of TLS to add. This parameter is used only if the value of `HttpsPorts` is not empty (indicating that the domain name uses the HTTPS protocol). Value:
  /// [xffHeaderMode] The method that is used to obtain the originating IP address of a client. Valid values:
  /// [xffHeaders] The custom header fields that are used to obtain the originating IP address of a client. Specify the value in the **\["header1","header2",...]** format.
  DomainListen({
    this.certId,
    this.cipherSuite,
    this.customCiphers,
    this.enableTlsv3,
    this.exclusiveIp,
    this.focusHttps,
    this.http2Enabled,
    this.httpPorts,
    this.httpsPorts,
    this.ipv6Enabled,
    this.protectionResource,
    this.sm2AccessOnly,
    this.sm2CertId,
    this.sm2Enabled,
    this.tlsVersion,
    this.xffHeaderMode,
    this.xffHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'cipherSuite': ?cipherSuite,
      'customCiphers': ?customCiphers,
      'enableTlsv3': ?enableTlsv3,
      'exclusiveIp': ?exclusiveIp,
      'focusHttps': ?focusHttps,
      'http2Enabled': ?http2Enabled,
      'httpPorts': ?httpPorts,
      'httpsPorts': ?httpsPorts,
      'ipv6Enabled': ?ipv6Enabled,
      'protectionResource': ?protectionResource,
      'sm2AccessOnly': ?sm2AccessOnly,
      'sm2CertId': ?sm2CertId,
      'sm2Enabled': ?sm2Enabled,
      'tlsVersion': ?tlsVersion,
      'xffHeaderMode': ?xffHeaderMode,
      'xffHeaders': ?xffHeaders,
    };
  }

  factory DomainListen.fromMap(Map<String, dynamic> map) {
    return DomainListen(
      certId: map['certId'] == null ? null : (map['certId']! as String).input(),
      cipherSuite: map['cipherSuite'] == null ? null : (map['cipherSuite']! as int).input(),
      customCiphers: map['customCiphers'] == null ? null : ((map['customCiphers']! as List).cast<String>()).input(),
      enableTlsv3: map['enableTlsv3'] == null ? null : (map['enableTlsv3']! as bool).input(),
      exclusiveIp: map['exclusiveIp'] == null ? null : (map['exclusiveIp']! as bool).input(),
      focusHttps: map['focusHttps'] == null ? null : (map['focusHttps']! as bool).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
      httpPorts: map['httpPorts'] == null ? null : ((map['httpPorts']! as List).cast<int>()).input(),
      httpsPorts: map['httpsPorts'] == null ? null : ((map['httpsPorts']! as List).cast<int>()).input(),
      ipv6Enabled: map['ipv6Enabled'] == null ? null : (map['ipv6Enabled']! as bool).input(),
      protectionResource: map['protectionResource'] == null ? null : (map['protectionResource']! as String).input(),
      sm2AccessOnly: map['sm2AccessOnly'] == null ? null : (map['sm2AccessOnly']! as bool).input(),
      sm2CertId: map['sm2CertId'] == null ? null : (map['sm2CertId']! as String).input(),
      sm2Enabled: map['sm2Enabled'] == null ? null : (map['sm2Enabled']! as bool).input(),
      tlsVersion: map['tlsVersion'] == null ? null : (map['tlsVersion']! as String).input(),
      xffHeaderMode: map['xffHeaderMode'] == null ? null : (map['xffHeaderMode']! as int).input(),
      xffHeaders: map['xffHeaders'] == null ? null : ((map['xffHeaders']! as List).cast<String>()).input(),
    );
  }
}

