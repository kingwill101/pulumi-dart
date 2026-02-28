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
  CertificateArgs({
    required bool active,
    String? caPem,
    String? certificatePem,
    String? csr,
    String? region,
  })  : active = pulumi.Input.asInput<bool>(active),
        caPem = pulumi.Input.asOptionalInput<String>(caPem),
        certificatePem = pulumi.Input.asOptionalInput<String>(certificatePem),
        csr = pulumi.Input.asOptionalInput<String>(csr),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    final caPemValue = caPem;
    if (caPemValue != null) {
      map['caPem'] = caPemValue;
    }
    final certificatePemValue = certificatePem;
    if (certificatePemValue != null) {
      map['certificatePem'] = certificatePemValue;
    }
    final csrValue = csr;
    if (csrValue != null) {
      map['csr'] = csrValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      active: map['active'] as bool,
      caPem: map['caPem'] == null ? null : map['caPem'] as String,
      certificatePem: map['certificatePem'] == null
          ? null
          : map['certificatePem'] as String,
      csr: map['csr'] == null ? null : map['csr'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
