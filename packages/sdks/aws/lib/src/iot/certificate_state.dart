// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Boolean flag to indicate if the certificate should be active
  final pulumi.Input<bool>? active;
  /// The ARN of the created certificate.
  final pulumi.Input<String>? arn;
  /// The certificate ID of the CA certificate used to sign the certificate.
  final pulumi.Input<String>? caCertificateId;
  /// The CA certificate for the certificate to be registered. If this is set, the CA needs to be registered with AWS IoT beforehand.
  final pulumi.Input<String>? caPem;
  /// The certificate to be registered. If `ca_pem` is unspecified, review
  /// [RegisterCertificateWithoutCA](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificateWithoutCA.html).
  /// If `ca_pem` is specified, review
  /// [RegisterCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificate.html)
  /// for more information on registering a certificate.
  final pulumi.Input<String>? certificatePem;
  /// The certificate signing request. Review
  /// [CreateCertificateFromCsr](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateCertificateFromCsr.html)
  /// for more information on generating a certificate from a certificate signing request (CSR).
  /// If none is specified both the certificate and keys will be generated, review [CreateKeysAndCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateKeysAndCertificate.html)
  /// for more information on generating keys and a certificate.
  final pulumi.Input<String>? csr;
  /// When neither CSR nor certificate is provided, the private key.
  final pulumi.Input<String>? privateKey;
  /// When neither CSR nor certificate is provided, the public key.
  final pulumi.Input<String>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CertificateState].
  /// [active] Boolean flag to indicate if the certificate should be active
  /// [arn] The ARN of the created certificate.
  /// [caCertificateId] The certificate ID of the CA certificate used to sign the certificate.
  /// [caPem] The CA certificate for the certificate to be registered. If this is set, the CA needs to be registered with AWS IoT beforehand.
  /// [certificatePem] The certificate to be registered. If `ca_pem` is unspecified, review
  /// [csr] The certificate signing request. Review
  /// [privateKey] When neither CSR nor certificate is provided, the private key.
  /// [publicKey] When neither CSR nor certificate is provided, the public key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CertificateState({
    this.active,
    this.arn,
    this.caCertificateId,
    this.caPem,
    this.certificatePem,
    this.csr,
    this.privateKey,
    this.publicKey,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'arn': ?arn,
      'caCertificateId': ?caCertificateId,
      'caPem': ?caPem,
      'certificatePem': ?certificatePem,
      'csr': ?csr,
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
      'region': ?region,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      active: map['active'] == null ? null : ((map['active'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      caCertificateId: map['caCertificateId'] == null ? null : ((map['caCertificateId'] as String).input()).input(),
      caPem: map['caPem'] == null ? null : ((map['caPem'] as String).input()).input(),
      certificatePem: map['certificatePem'] == null ? null : ((map['certificatePem'] as String).input()).input(),
      csr: map['csr'] == null ? null : ((map['csr'] as String).input()).input(),
      privateKey: map['privateKey'] == null ? null : ((map['privateKey'] as String).input()).input(),
      publicKey: map['publicKey'] == null ? null : ((map['publicKey'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

