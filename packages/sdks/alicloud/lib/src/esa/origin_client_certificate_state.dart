// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginClientCertificate resources.
class OriginClientCertificateState {
  /// The certificate content.
  final pulumi.Input<String>? certificate;
  /// The time when the certificate was created.
  final pulumi.Input<String>? createTime;
  /// The domain names to associate.
  final pulumi.Input<List<String>>? hostnames;
  /// The certificate ID.
  final pulumi.Input<String>? originClientCertificateId;
  /// The certificate name.
  final pulumi.Input<String>? originClientCertificateName;
  /// The private key of the certificate.
  final pulumi.Input<String>? privateKey;
  /// Site ID.
  final pulumi.Input<String>? siteId;
  /// The status of the certificate.
  final pulumi.Input<String>? status;

  /// Creates a new [OriginClientCertificateState].
  /// [certificate] The certificate content.
  /// [createTime] The time when the certificate was created.
  /// [hostnames] The domain names to associate.
  /// [originClientCertificateId] The certificate ID.
  /// [originClientCertificateName] The certificate name.
  /// [privateKey] The private key of the certificate.
  /// [siteId] Site ID.
  /// [status] The status of the certificate.
  OriginClientCertificateState({
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? hostnames,
    pulumi.Output<String>? originClientCertificateId,
    pulumi.Output<String>? originClientCertificateName,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      originClientCertificateId = pulumi.Input.asOptionalInput<String>(originClientCertificateId),
      originClientCertificateName = pulumi.Input.asOptionalInput<String>(originClientCertificateName),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'createTime': ?createTime,
      'hostnames': ?hostnames,
      'originClientCertificateId': ?originClientCertificateId,
      'originClientCertificateName': ?originClientCertificateName,
      'privateKey': ?privateKey,
      'siteId': ?siteId,
      'status': ?status,
    };
  }

  factory OriginClientCertificateState.fromMap(Map<String, dynamic> map) {
    return OriginClientCertificateState(
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      hostnames: map['hostnames'] == null ? null : pulumi.Output.create<List<String>>((map['hostnames'] as List).cast<String>()),
      originClientCertificateId: map['originClientCertificateId'] == null ? null : pulumi.Output.create<String>(map['originClientCertificateId'] as String),
      originClientCertificateName: map['originClientCertificateName'] == null ? null : pulumi.Output.create<String>(map['originClientCertificateName'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

