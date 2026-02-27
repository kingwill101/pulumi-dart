// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CertificateAuthorityCertificate.
class CertificateAuthorityCertificateArgs {
  /// PEM-encoded certificate for the Certificate Authority.
  final pulumi.Input<String> certificate;

  /// ARN of the Certificate Authority.
  final pulumi.Input<String> certificateAuthorityArn;

  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  final pulumi.Input<String>? certificateChain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  CertificateAuthorityCertificateArgs({
    required this.certificate,
    required this.certificateAuthorityArn,
    this.certificateChain,
    this.region,
  });

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
      certificate: pulumi.Input.asInput<String>(map['certificate']),
      certificateAuthorityArn:
          pulumi.Input.asInput<String>(map['certificateAuthorityArn']),
      certificateChain:
          pulumi.Input.asOptionalInput<String>(map['certificateChain']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
