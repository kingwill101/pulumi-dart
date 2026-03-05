// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_validity.dart';

/// {@template pulumi_acmpca_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_acmpca_certificate_certificate_args_doc}
class CertificateArgs {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  final pulumi.Input<String>? apiPassthrough;
  /// ARN of the certificate authority.
  final pulumi.Input<String> certificateAuthorityArn;
  /// Certificate Signing Request in PEM format.
  final pulumi.Input<String> certificateSigningRequest;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  final pulumi.Input<String> signingAlgorithm;
  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  final pulumi.Input<String>? templateArn;
  /// Configures end of the validity period for the certificate. See validity block below.
  final pulumi.Input<CertificateValidity> validity;

  /// Creates a new [CertificateArgs].
  /// [apiPassthrough] Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  /// [certificateAuthorityArn] ARN of the certificate authority.
  /// [certificateSigningRequest] Certificate Signing Request in PEM format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [signingAlgorithm] Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  /// [templateArn] Template to use when issuing a certificate.
  /// [validity] Configures end of the validity period for the certificate. See validity block below.
  CertificateArgs({
    this.apiPassthrough,
    required this.certificateAuthorityArn,
    required this.certificateSigningRequest,
    this.region,
    required this.signingAlgorithm,
    this.templateArn,
    required this.validity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPassthrough': ?apiPassthrough,
      'certificateAuthorityArn': certificateAuthorityArn,
      'certificateSigningRequest': certificateSigningRequest,
      'region': ?region,
      'signingAlgorithm': signingAlgorithm,
      'templateArn': ?templateArn,
      'validity': pulumi.Input.mapInputValue<CertificateValidity, Map<String, dynamic>>(validity, (value) => value.toMap()),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      apiPassthrough: (() { final guardedValue = map['apiPassthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthorityArn: pulumi.Input.fromValue(map['certificateAuthorityArn'] as String),
      certificateSigningRequest: pulumi.Input.fromValue(map['certificateSigningRequest'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingAlgorithm: pulumi.Input.fromValue(map['signingAlgorithm'] as String),
      templateArn: (() { final guardedValue = map['templateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validity: pulumi.Input.fromValue(CertificateValidity.fromMap((map['validity']! as Map).cast<String, dynamic>())),
    );
  }
}

