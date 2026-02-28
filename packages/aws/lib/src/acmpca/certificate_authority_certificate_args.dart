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
    required String certificate,
    required String certificateAuthorityArn,
    String? certificateChain,
    String? region,
  })  : certificate = pulumi.Input.asInput<String>(certificate),
        certificateAuthorityArn =
            pulumi.Input.asInput<String>(certificateAuthorityArn),
        certificateChain =
            pulumi.Input.asOptionalInput<String>(certificateChain),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    map['certificateAuthorityArn'] = certificateAuthorityArn;
    final certificateChainValue = certificateChain;
    if (certificateChainValue != null) {
      map['certificateChain'] = certificateChainValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CertificateAuthorityCertificateArgs.fromMap(
      Map<String, dynamic> map) {
    return CertificateAuthorityCertificateArgs(
      certificate: map['certificate'] as String,
      certificateAuthorityArn: map['certificateAuthorityArn'] as String,
      certificateChain: map['certificateChain'] == null
          ? null
          : map['certificateChain'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
