import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_validity/certificate_validity.dart';
import 'certificate_acmpca_args.dart';

/// Provides a resource to issue a certificate using AWS Certificate Manager Private Certificate Authority (ACM PCA).
///
/// Certificates created using `aws.acmpca.Certificate` are not eligible for automatic renewal,
/// and must be replaced instead.
/// To issue a renewable certificate using an ACM PCA, create a `aws.acm.Certificate`
/// with the parameter `certificate_authority_arn`.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the ACM PCA certificate.
///
///
/// Using `pulumi import`, import ACM PCA Certificates using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/certificate:Certificate cert arn:aws:acm-pca:eu-west-1:675225743824:certificate-authority/08319ede-83g9-1400-8f21-c7d12b2b6edb/certificate/a4e9c2aa4bcfab625g1b9136464cd3a
/// ```
class CertificateAcmpca extends pulumi.CustomResource {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  late final pulumi.Output<String?> apiPassthrough;

  /// ARN of the certificate.
  late final pulumi.Output<String> arn;

  /// PEM-encoded certificate value.
  late final pulumi.Output<String> certificate;

  /// ARN of the certificate authority.
  late final pulumi.Output<String> certificateAuthorityArn;

  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  late final pulumi.Output<String> certificateChain;

  /// Certificate Signing Request in PEM format.
  late final pulumi.Output<String> certificateSigningRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  late final pulumi.Output<String> signingAlgorithm;

  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  late final pulumi.Output<String?> templateArn;

  /// Configures end of the validity period for the certificate. See validity block below.
  late final pulumi.Output<CertificateValidity> validity;

  CertificateAcmpca(
    String name, {
    CertificateAcmpcaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiPassthrough = registerOutput<String?>('apiPassthrough');
    this.arn = registerOutput<String>('arn');
    this.certificate = registerOutput<String>('certificate');
    this.certificateAuthorityArn =
        registerOutput<String>('certificateAuthorityArn');
    this.certificateChain = registerOutput<String>('certificateChain');
    this.certificateSigningRequest =
        registerOutput<String>('certificateSigningRequest');
    this.region = registerOutput<String>('region');
    this.signingAlgorithm = registerOutput<String>('signingAlgorithm');
    this.templateArn = registerOutput<String?>('templateArn');
    this.validity = registerOutput<CertificateValidity>('validity');
  }
}
