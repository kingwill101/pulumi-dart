// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_iot_certificate_certificate_args_doc}
class CertificateArgs {
  /// Boolean flag to indicate if the certificate should be active
  final pulumi.Input<bool> active;
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
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CertificateArgs].
  /// [active] Boolean flag to indicate if the certificate should be active
  /// [caPem] The CA certificate for the certificate to be registered. If this is set, the CA needs to be registered with AWS IoT beforehand.
  /// [certificatePem] The certificate to be registered. If `ca_pem` is unspecified, review
  /// [csr] The certificate signing request. Review
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const CertificateArgs({
    required this.active,
    this.caPem,
    this.certificatePem,
    this.csr,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'caPem': ?caPem,
      'certificatePem': ?certificatePem,
      'csr': ?csr,
      'region': ?region,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      active: pulumi.Input.fromValue(map['active'] as bool),
      caPem: (() { final guardedValue = map['caPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificatePem: (() { final guardedValue = map['certificatePem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

