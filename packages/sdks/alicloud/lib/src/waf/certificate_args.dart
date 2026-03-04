// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_waf_certificate_certificate_args_doc}
class CertificateArgs {
  /// Certificate file content.
  final pulumi.Input<String>? certificate;

  /// The certificate id is automatically generated when you upload your certificate content.**NOTE:** you can also use Certificate ID saved in SSL.
  final pulumi.Input<String>? certificateId;

  /// Certificate file name.
  final pulumi.Input<String>? certificateName;

  /// The domain that you want to add to WAF.
  final pulumi.Input<String> domain;

  /// The ID of the WAF instance.
  final pulumi.Input<String> instanceId;

  /// The private key.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [CertificateArgs].
  /// [certificate] Certificate file content.
  /// [certificateId] The certificate id is automatically generated when you upload your certificate content.**NOTE:** you can also use Certificate ID saved in SSL.
  /// [certificateName] Certificate file name.
  /// [domain] The domain that you want to add to WAF.
  /// [instanceId] The ID of the WAF instance.
  /// [privateKey] The private key.
  CertificateArgs({
    this.certificate,
    this.certificateId,
    this.certificateName,
    required this.domain,
    required this.instanceId,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'domain': domain,
      'instanceId': instanceId,
      'privateKey': ?privateKey,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificate: (() {
        final guardedValue = map['certificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateId: (() {
        final guardedValue = map['certificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateName: (() {
        final guardedValue = map['certificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
