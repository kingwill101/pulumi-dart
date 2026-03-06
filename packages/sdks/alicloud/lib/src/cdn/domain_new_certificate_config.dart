// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNewCertificateConfig {
  /// The ID of the certificate. It takes effect only when CertType = cas.
  final pulumi.Input<String>? certId;
  /// Certificate name, only flyer names are supported.
  final pulumi.Input<String>? certName;
  /// The certificate region, which takes effect only when CertType = cas, supports cn-hangzhou (domestic) and ap-southeast-1 (International), and is cn-hangzhou by default.
  final pulumi.Input<String>? certRegion;
  /// Certificate type. Value:
  /// - **upload**: upload certificate.
  /// - **cas**: Cloud Shield certificate.
  /// - **free**: free certificate.
  /// &gt; If the certificate type is **cas**, **PrivateKey** does not need to pass parameters.
  final pulumi.Input<String>? certType;
  /// The content of the private key. If the certificate is not enabled, you do not need to enter the content of the private key. To configure the certificate, enter the content of the private key.
  final pulumi.Input<String>? privateKey;
  /// The content of the security certificate. If the certificate is not enabled, you do not need to enter the content of the security certificate. Please enter the content of the certificate to configure the certificate.
  final pulumi.Input<String>? serverCertificate;
  /// Whether the HTTPS certificate is enabled. Value:
  /// - **on**(default): enabled.
  /// - **off** : not enabled.
  final pulumi.Input<String>? serverCertificateStatus;

  /// Creates a new [DomainNewCertificateConfig].
  /// [certId] The ID of the certificate. It takes effect only when CertType = cas.
  /// [certName] Certificate name, only flyer names are supported.
  /// [certRegion] The certificate region, which takes effect only when CertType = cas, supports cn-hangzhou (domestic) and ap-southeast-1 (International), and is cn-hangzhou by default.
  /// [certType] Certificate type. Value:
  /// [privateKey] The content of the private key. If the certificate is not enabled, you do not need to enter the content of the private key. To configure the certificate, enter the content of the private key.
  /// [serverCertificate] The content of the security certificate. If the certificate is not enabled, you do not need to enter the content of the security certificate. Please enter the content of the certificate to configure the certificate.
  /// [serverCertificateStatus] Whether the HTTPS certificate is enabled. Value:
  const DomainNewCertificateConfig({
    this.certId,
    this.certName,
    this.certRegion,
    this.certType,
    this.privateKey,
    this.serverCertificate,
    this.serverCertificateStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certName': ?certName,
      'certRegion': ?certRegion,
      'certType': ?certType,
      'privateKey': ?privateKey,
      'serverCertificate': ?serverCertificate,
      'serverCertificateStatus': ?serverCertificateStatus,
    };
  }

  factory DomainNewCertificateConfig.fromMap(Map<String, dynamic> map) {
    return DomainNewCertificateConfig(
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certName: (() { final guardedValue = map['certName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certRegion: (() { final guardedValue = map['certRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certType: (() { final guardedValue = map['certType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificate: (() { final guardedValue = map['serverCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateStatus: (() { final guardedValue = map['serverCertificateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

