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
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? certificateName,
    required pulumi.Output<String> domain,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? privateKey,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      domain = pulumi.Input.asInput<String>(domain),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
    );
  }
}

