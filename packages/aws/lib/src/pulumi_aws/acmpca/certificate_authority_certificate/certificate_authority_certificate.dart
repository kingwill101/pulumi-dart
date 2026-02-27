import 'package:pulumi/pulumi.dart';
import 'certificate_authority_certificate_args.dart';

/// Associates a certificate with an AWS Certificate Manager Private Certificate Authority (ACM PCA Certificate Authority). An ACM PCA Certificate Authority is unable to issue certificates until it has a certificate associated with it. A root level ACM PCA Certificate Authority is able to self-sign its own root certificate.
///
/// ## Example Usage
///
/// ### Self-Signed Root Certificate Authority Certificate
///
///
///
/// ### Certificate for Subordinate Certificate Authority
///
/// Note that the certificate for the subordinate certificate authority must be issued by the root certificate authority using a signing request from the subordinate certificate authority.
class CertificateAuthorityCertificate extends CustomResource {
  /// PEM-encoded certificate for the Certificate Authority.
  late final Output<String> certificate;

  /// ARN of the Certificate Authority.
  late final Output<String> certificateAuthorityArn;

  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  late final Output<String?> certificateChain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  CertificateAuthorityCertificate(
    String name, {
    CertificateAuthorityCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificateAuthorityCertificate:CertificateAuthorityCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificate = registerOutput<String>('certificate');
    this.certificateAuthorityArn =
        registerOutput<String>('certificateAuthorityArn');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.region = registerOutput<String>('region');
  }
}
