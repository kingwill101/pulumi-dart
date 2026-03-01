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
    pulumi.Output<bool>? active,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? caCertificateId,
    pulumi.Output<String>? caPem,
    pulumi.Output<String>? certificatePem,
    pulumi.Output<String>? csr,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      caCertificateId = pulumi.Input.asOptionalInput<String>(caCertificateId),
      caPem = pulumi.Input.asOptionalInput<String>(caPem),
      certificatePem = pulumi.Input.asOptionalInput<String>(certificatePem),
      csr = pulumi.Input.asOptionalInput<String>(csr),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      caCertificateId: map['caCertificateId'] == null ? null : pulumi.Output.create<String>(map['caCertificateId'] as String),
      caPem: map['caPem'] == null ? null : pulumi.Output.create<String>(map['caPem'] as String),
      certificatePem: map['certificatePem'] == null ? null : pulumi.Output.create<String>(map['certificatePem'] as String),
      csr: map['csr'] == null ? null : pulumi.Output.create<String>(map['csr'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

