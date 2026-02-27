import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_iot_args.dart';

/// Creates and manages an AWS IoT certificate.
///
/// ## Example Usage
///
/// ### With CSR
///
///
///
/// ### Without CSR
///
///
///
/// ### From existing certificate without a CA
class CertificateIot extends pulumi.CustomResource {
  /// Boolean flag to indicate if the certificate should be active
  late final pulumi.Output<bool> active;

  /// The ARN of the created certificate.
  late final pulumi.Output<String> arn;

  /// The certificate ID of the CA certificate used to sign the certificate.
  late final pulumi.Output<String> caCertificateId;

  /// The CA certificate for the certificate to be registered. If this is set, the CA needs to be registered with AWS IoT beforehand.
  late final pulumi.Output<String?> caPem;

  /// The certificate to be registered. If `ca_pem` is unspecified, review
  /// [RegisterCertificateWithoutCA](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificateWithoutCA.html).
  /// If `ca_pem` is specified, review
  /// [RegisterCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificate.html)
  /// for more information on registering a certificate.
  late final pulumi.Output<String> certificatePem;

  /// The certificate signing request. Review
  /// [CreateCertificateFromCsr](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateCertificateFromCsr.html)
  /// for more information on generating a certificate from a certificate signing request (CSR).
  /// If none is specified both the certificate and keys will be generated, review [CreateKeysAndCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateKeysAndCertificate.html)
  /// for more information on generating keys and a certificate.
  late final pulumi.Output<String?> csr;

  /// When neither CSR nor certificate is provided, the private key.
  late final pulumi.Output<String> privateKey;

  /// When neither CSR nor certificate is provided, the public key.
  late final pulumi.Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  CertificateIot(
    String name, {
    CertificateIotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool>('active');
    this.arn = registerOutput<String>('arn');
    this.caCertificateId = registerOutput<String>('caCertificateId');
    this.caPem = registerOutput<String?>('caPem');
    this.certificatePem = registerOutput<String>('certificatePem');
    this.csr = registerOutput<String?>('csr');
    this.privateKey = registerOutput<String>('privateKey');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
  }
}
