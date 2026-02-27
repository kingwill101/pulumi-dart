import 'package:pulumi/pulumi.dart';
import '../certificate_authority_certificate_authority_configuration/certificate_authority_certificate_authority_configuration.dart';
import '../certificate_authority_revocation_configuration/certificate_authority_revocation_configuration.dart';
import 'certificate_authority_args.dart';

/// Provides a resource to manage AWS Certificate Manager Private Certificate Authorities (ACM PCA Certificate Authorities).
///
/// > **NOTE:** Creating this resource will leave the certificate authority in a `PENDING_CERTIFICATE` status, which means it cannot yet issue certificates. To complete this setup, you must fully sign the certificate authority CSR available in the `certificate_signing_request` attribute. The `aws.acmpca.CertificateAuthorityCertificate` resource can be used for this purpose.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Short-lived certificate
///
///
///
/// ### Enable Certificate Revocation List
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the ACM PCA certificate authority.
///
///
/// Using `pulumi import`, import `aws.acmpca.CertificateAuthority` using the certificate authority ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/certificateAuthority:CertificateAuthority example arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012
/// ```
class CertificateAuthority extends CustomResource {
  /// ARN of the certificate authority.
  late final Output<String> arn;

  /// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  late final Output<String> certificate;

  /// Nested argument containing algorithms and certificate subject information. Defined below.
  late final Output<CertificateAuthorityCertificateAuthorityConfiguration>
      certificateAuthorityConfiguration;

  /// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  late final Output<String> certificateChain;

  /// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  late final Output<String> certificateSigningRequest;

  /// Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  late final Output<bool?> enabled;

  /// Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  late final Output<String> keyStorageSecurityStandard;

  /// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  late final Output<String> notAfter;

  /// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  late final Output<String> notBefore;

  /// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  late final Output<int?> permanentDeletionTimeInDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Nested argument containing revocation configuration. Defined below.
  late final Output<CertificateAuthorityRevocationConfiguration?>
      revocationConfiguration;

  /// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  late final Output<String> serial;

  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  late final Output<String?> type;

  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  late final Output<String> usageMode;

  CertificateAuthority(
    String name, {
    CertificateAuthorityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificateAuthority:CertificateAuthority',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificate = registerOutput<String>('certificate');
    this.certificateAuthorityConfiguration =
        registerOutput<CertificateAuthorityCertificateAuthorityConfiguration>(
            'certificateAuthorityConfiguration');
    this.certificateChain = registerOutput<String>('certificateChain');
    this.certificateSigningRequest =
        registerOutput<String>('certificateSigningRequest');
    this.enabled = registerOutput<bool?>('enabled');
    this.keyStorageSecurityStandard =
        registerOutput<String>('keyStorageSecurityStandard');
    this.notAfter = registerOutput<String>('notAfter');
    this.notBefore = registerOutput<String>('notBefore');
    this.permanentDeletionTimeInDays =
        registerOutput<int?>('permanentDeletionTimeInDays');
    this.region = registerOutput<String>('region');
    this.revocationConfiguration =
        registerOutput<CertificateAuthorityRevocationConfiguration?>(
            'revocationConfiguration');
    this.serial = registerOutput<String>('serial');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.usageMode = registerOutput<String>('usageMode');
  }
}
