// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_validity.dart';

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  final pulumi.Input<String>? apiPassthrough;
  /// ARN of the certificate.
  final pulumi.Input<String>? arn;
  /// PEM-encoded certificate value.
  final pulumi.Input<String>? certificate;
  /// ARN of the certificate authority.
  final pulumi.Input<String>? certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  final pulumi.Input<String>? certificateChain;
  /// Certificate Signing Request in PEM format.
  final pulumi.Input<String>? certificateSigningRequest;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  final pulumi.Input<String>? signingAlgorithm;
  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  final pulumi.Input<String>? templateArn;
  /// Configures end of the validity period for the certificate. See validity block below.
  final pulumi.Input<CertificateValidity>? validity;

  /// Creates a new [CertificateState].
  /// [apiPassthrough] Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  /// [arn] ARN of the certificate.
  /// [certificate] PEM-encoded certificate value.
  /// [certificateAuthorityArn] ARN of the certificate authority.
  /// [certificateChain] PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  /// [certificateSigningRequest] Certificate Signing Request in PEM format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [signingAlgorithm] Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  /// [templateArn] Template to use when issuing a certificate.
  /// [validity] Configures end of the validity period for the certificate. See validity block below.
  CertificateState({
    this.apiPassthrough,
    this.arn,
    this.certificate,
    this.certificateAuthorityArn,
    this.certificateChain,
    this.certificateSigningRequest,
    this.region,
    this.signingAlgorithm,
    this.templateArn,
    this.validity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPassthrough': ?apiPassthrough,
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateChain': ?certificateChain,
      'certificateSigningRequest': ?certificateSigningRequest,
      'region': ?region,
      'signingAlgorithm': ?signingAlgorithm,
      'templateArn': ?templateArn,
      'validity': ?pulumi.Input.mapOptionalInputValue<CertificateValidity, Map<String, dynamic>>(validity, (value) => value.toMap()),
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      apiPassthrough: map['apiPassthrough'] == null ? null : ((map['apiPassthrough'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      certificate: map['certificate'] == null ? null : ((map['certificate'] as String).input()).input(),
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : ((map['certificateAuthorityArn'] as String).input()).input(),
      certificateChain: map['certificateChain'] == null ? null : ((map['certificateChain'] as String).input()).input(),
      certificateSigningRequest: map['certificateSigningRequest'] == null ? null : ((map['certificateSigningRequest'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      signingAlgorithm: map['signingAlgorithm'] == null ? null : ((map['signingAlgorithm'] as String).input()).input(),
      templateArn: map['templateArn'] == null ? null : ((map['templateArn'] as String).input()).input(),
      validity: map['validity'] == null ? null : ((CertificateValidity.fromMap((map['validity']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

