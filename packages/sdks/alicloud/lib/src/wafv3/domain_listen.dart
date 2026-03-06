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
  /// &gt; **NOTE:**   This parameter is required only if you set `XffHeaderMode` to 2.
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
  const DomainListen({
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
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipherSuite: (() { final guardedValue = map['cipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customCiphers: (() { final guardedValue = map['customCiphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableTlsv3: (() { final guardedValue = map['enableTlsv3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusiveIp: (() { final guardedValue = map['exclusiveIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      focusHttps: (() { final guardedValue = map['focusHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpPorts: (() { final guardedValue = map['httpPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      httpsPorts: (() { final guardedValue = map['httpsPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protectionResource: (() { final guardedValue = map['protectionResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sm2AccessOnly: (() { final guardedValue = map['sm2AccessOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sm2CertId: (() { final guardedValue = map['sm2CertId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sm2Enabled: (() { final guardedValue = map['sm2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsVersion: (() { final guardedValue = map['tlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xffHeaderMode: (() { final guardedValue = map['xffHeaderMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      xffHeaders: (() { final guardedValue = map['xffHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

