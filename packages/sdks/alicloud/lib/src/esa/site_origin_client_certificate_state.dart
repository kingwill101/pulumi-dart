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
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? siteOriginClientCertificateId,
    pulumi.Output<String>? siteOriginClientCertificateName,
    pulumi.Output<String>? status,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteOriginClientCertificateId = pulumi.Input.asOptionalInput<String>(siteOriginClientCertificateId),
      siteOriginClientCertificateName = pulumi.Input.asOptionalInput<String>(siteOriginClientCertificateName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteOriginClientCertificateId: map['siteOriginClientCertificateId'] == null ? null : pulumi.Output.create<String>(map['siteOriginClientCertificateId'] as String),
      siteOriginClientCertificateName: map['siteOriginClientCertificateName'] == null ? null : pulumi.Output.create<String>(map['siteOriginClientCertificateName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

