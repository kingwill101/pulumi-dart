// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_validity/certificate_validity.dart';

/// The set of arguments for Certificate.
class CertificateAcmpcaArgs {
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

  CertificateAcmpcaArgs({
    this.apiPassthrough,
    required this.certificateAuthorityArn,
    required this.certificateSigningRequest,
    this.region,
    required this.signingAlgorithm,
    this.templateArn,
    required this.validity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiPassthroughValue = apiPassthrough;
    if (apiPassthroughValue != null) {
      map['apiPassthrough'] = apiPassthroughValue;
    }
    map['certificateAuthorityArn'] = certificateAuthorityArn;
    map['certificateSigningRequest'] = certificateSigningRequest;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['signingAlgorithm'] = signingAlgorithm;
    final templateArnValue = templateArn;
    if (templateArnValue != null) {
      map['templateArn'] = templateArnValue;
    }
    map['validity'] =
        pulumi.Input.mapInputValue<CertificateValidity, Map<String, dynamic>>(
            validity, (value) => value.toMap());
    return map;
  }

  factory CertificateAcmpcaArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAcmpcaArgs(
      apiPassthrough:
          pulumi.Input.asOptionalInput<String>(map['apiPassthrough']),
      certificateAuthorityArn:
          pulumi.Input.asInput<String>(map['certificateAuthorityArn']),
      certificateSigningRequest:
          pulumi.Input.asInput<String>(map['certificateSigningRequest']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      signingAlgorithm: pulumi.Input.asInput<String>(map['signingAlgorithm']),
      templateArn: pulumi.Input.asOptionalInput<String>(map['templateArn']),
      validity: pulumi.Input.asInput<CertificateValidity>(map['validity']),
    );
  }
}
