// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_validity/certificate_validity.dart';

/// The set of arguments for Certificate.
class CertificateArgs2 {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  final Input<String>? apiPassthrough;

  /// ARN of the certificate authority.
  final Input<String> certificateAuthorityArn;

  /// Certificate Signing Request in PEM format.
  final Input<String> certificateSigningRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  final Input<String> signingAlgorithm;

  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  final Input<String>? templateArn;

  /// Configures end of the validity period for the certificate. See validity block below.
  final Input<CertificateValidity> validity;

  CertificateArgs2({
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
        Input.mapInputValue<CertificateValidity, Map<String, dynamic>>(
            validity, (value) => value.toMap());
    return map;
  }

  factory CertificateArgs2.fromMap(Map<String, dynamic> map) {
    return CertificateArgs2(
      apiPassthrough: Input.asOptionalInput<String>(map['apiPassthrough']),
      certificateAuthorityArn:
          Input.asInput<String>(map['certificateAuthorityArn']),
      certificateSigningRequest:
          Input.asInput<String>(map['certificateSigningRequest']),
      region: Input.asOptionalInput<String>(map['region']),
      signingAlgorithm: Input.asInput<String>(map['signingAlgorithm']),
      templateArn: Input.asOptionalInput<String>(map['templateArn']),
      validity: Input.asInput<CertificateValidity>(map['validity']),
    );
  }
}
