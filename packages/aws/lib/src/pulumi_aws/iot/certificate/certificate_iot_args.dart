// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Certificate.
class CertificateIotArgs {
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

  CertificateIotArgs({
    required this.active,
    this.caPem,
    this.certificatePem,
    this.csr,
    this.region,
  });

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

  factory CertificateIotArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIotArgs(
      active: pulumi.Input.asInput<bool>(map['active']),
      caPem: pulumi.Input.asOptionalInput<String>(map['caPem']),
      certificatePem:
          pulumi.Input.asOptionalInput<String>(map['certificatePem']),
      csr: pulumi.Input.asOptionalInput<String>(map['csr']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
