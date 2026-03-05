// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SiteOriginClientCertificate resources.
class SiteOriginClientCertificateState {
  /// The certificate content.
  final pulumi.Input<String>? certificate;
  /// The time when the certificate was created.
  final pulumi.Input<String>? createTime;
  /// The private key of the certificate.
  final pulumi.Input<String>? privateKey;
  /// Site ID.
  final pulumi.Input<String>? siteId;
  /// The certificate ID on ESA.
  final pulumi.Input<String>? siteOriginClientCertificateId;
  /// The certificate name.
  final pulumi.Input<String>? siteOriginClientCertificateName;
  /// The status of the certificate.
  final pulumi.Input<String>? status;

  /// Creates a new [SiteOriginClientCertificateState].
  /// [certificate] The certificate content.
  /// [createTime] The time when the certificate was created.
  /// [privateKey] The private key of the certificate.
  /// [siteId] Site ID.
  /// [siteOriginClientCertificateId] The certificate ID on ESA.
  /// [siteOriginClientCertificateName] The certificate name.
  /// [status] The status of the certificate.
  SiteOriginClientCertificateState({
    this.certificate,
    this.createTime,
    this.privateKey,
    this.siteId,
    this.siteOriginClientCertificateId,
    this.siteOriginClientCertificateName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'createTime': ?createTime,
      'privateKey': ?privateKey,
      'siteId': ?siteId,
      'siteOriginClientCertificateId': ?siteOriginClientCertificateId,
      'siteOriginClientCertificateName': ?siteOriginClientCertificateName,
      'status': ?status,
    };
  }

  factory SiteOriginClientCertificateState.fromMap(Map<String, dynamic> map) {
    return SiteOriginClientCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteOriginClientCertificateId: (() { final guardedValue = map['siteOriginClientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteOriginClientCertificateName: (() { final guardedValue = map['siteOriginClientCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

