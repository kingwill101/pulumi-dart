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
    this.certificate,
    this.createTime,
    this.hostnames,
    this.originClientCertificateId,
    this.originClientCertificateName,
    this.privateKey,
    this.siteId,
    this.status,
  });

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
      certificate: (() {
        final guardedValue = map['certificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostnames: (() {
        final guardedValue = map['hostnames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      originClientCertificateId: (() {
        final guardedValue = map['originClientCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originClientCertificateName: (() {
        final guardedValue = map['originClientCertificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
