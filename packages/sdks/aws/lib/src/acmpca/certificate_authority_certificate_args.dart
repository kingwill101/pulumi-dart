// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acmpca_certificate_authority_certificate_certificate_authority_certificate_args_doc}
/// The set of arguments for CertificateAuthorityCertificate.
/// {@endtemplate}
/// {@macro pulumi_acmpca_certificate_authority_certificate_certificate_authority_certificate_args_doc}
class CertificateAuthorityCertificateArgs {
  /// PEM-encoded certificate for the Certificate Authority.
  final pulumi.Input<String> certificate;
  /// ARN of the Certificate Authority.
  final pulumi.Input<String> certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  final pulumi.Input<String>? certificateChain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CertificateAuthorityCertificateArgs].
  /// [certificate] PEM-encoded certificate for the Certificate Authority.
  /// [certificateAuthorityArn] ARN of the Certificate Authority.
  /// [certificateChain] PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CertificateAuthorityCertificateArgs({
    required this.certificate,
    required this.certificateAuthorityArn,
    this.certificateChain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'certificateAuthorityArn': certificateAuthorityArn,
      'certificateChain': ?certificateChain,
      'region': ?region,
    };
  }

  factory CertificateAuthorityCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      certificateAuthorityArn: pulumi.Input.fromValue(map['certificateAuthorityArn'] as String),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

