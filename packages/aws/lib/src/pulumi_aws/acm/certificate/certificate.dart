import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_domain_validation_option/certificate_domain_validation_option.dart';
import '../certificate_options/certificate_options.dart';
import '../certificate_renewal_summary/certificate_renewal_summary.dart';
import '../certificate_validation_option/certificate_validation_option.dart';
import 'certificate_args.dart';

/// The ACM certificate resource allows requesting and management of certificates
/// from the Amazon Certificate Manager.
///
/// ACM certificates can be created in three ways:
/// Amazon-issued, where AWS provides the certificate authority and automatically manages renewal;
/// imported certificates, issued by another certificate authority;
/// and private certificates, issued using an ACM Private Certificate Authority.
///
/// ## Amazon-Issued Certificates
///
/// For Amazon-issued certificates, this resource deals with requesting certificates and managing their attributes and life-cycle.
/// This resource does not deal with validation of a certificate but can provide inputs
/// for other resources implementing the validation.
/// It does not wait for a certificate to be issued.
/// Use a `aws.acm.CertificateValidation` resource for this.
///
/// Most commonly, this resource is used together with `aws.route53.Record` and
/// `aws.acm.CertificateValidation` to request a DNS validated certificate,
/// deploy the required validation records and wait for validation to complete.
///
/// Domain validation through email is also supported but should be avoided as it requires a manual step outside of this provider.
///
///
/// ## Certificates Imported from Other Certificate Authority
///
/// Imported certificates can be used to make certificates created with an external certificate authority available for AWS services.
///
/// As they are not managed by AWS, imported certificates are not eligible for automatic renewal.
/// New certificate materials can be supplied to an existing imported certificate to update it in place.
///
/// ## Private Certificates
///
/// Private certificates are issued by an ACM Private Certificate Authority, which can be created using the resource type `aws.acmpca.CertificateAuthority`.
///
/// Private certificates created using this resource are eligible for managed renewal if they have been exported or associated with another AWS service.
/// See [managed renewal documentation](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html) for more information.
/// By default, a certificate is valid for 395 days and the managed renewal process will start 60 days before expiration.
/// To renew the certificate earlier than 60 days before expiration, configure `early_renewal_duration`.
///
/// ## Example Usage
///
/// ### Custom Domain Validation Options
///
///
///
/// ### Existing Certificate Body Import
///
///
///
/// ### Referencing domain_validation_options With for_each Based Resources
///
/// See the `aws.acm.CertificateValidation` resource for a full example of performing DNS validation.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the certificate.
///
///
/// Using `pulumi import`, import certificates using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acm/certificate:Certificate example arn:aws:acm:eu-central-1:123456789012:certificate/7e7a28d2-163f-4b8f-b9cd-822f96c08d6a
/// ```
class Certificate extends pulumi.CustomResource {
  /// ARN of the certificate
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String?> certificateAuthorityArn;
  late final pulumi.Output<String?> certificateBody;
  late final pulumi.Output<String?> certificateChain;

  /// Fully qualified domain name (FQDN) in the certificate.
  late final pulumi.Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation.
  /// Can have more than one element, e.g., if SANs are defined.
  /// Only set if `DNS`-validation was used.
  late final pulumi.Output<List<CertificateDomainValidationOption>>
      domainValidationOptions;
  late final pulumi.Output<String?> earlyRenewalDuration;
  late final pulumi.Output<String> keyAlgorithm;

  /// Expiration date and time of the certificate.
  late final pulumi.Output<String> notAfter;

  /// Start of the validity period of the certificate.
  late final pulumi.Output<String> notBefore;
  late final pulumi.Output<CertificateOptions> options;

  /// `true` if a Private certificate eligible for managed renewal is within the `early_renewal_duration` period.
  late final pulumi.Output<bool> pendingRenewal;
  late final pulumi.Output<String?> privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * Creating an Amazon issued certificate
  late final pulumi.Output<String> region;

  /// Whether the certificate is eligible for managed renewal.
  late final pulumi.Output<String> renewalEligibility;

  /// Contains information about the status of ACM's [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for the certificate.
  late final pulumi.Output<List<CertificateRenewalSummary>> renewalSummaries;

  /// Status of the certificate.
  late final pulumi.Output<String> status;
  late final pulumi.Output<List<String>> subjectAlternativeNames;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Source of the certificate.
  late final pulumi.Output<String> type;

  /// List of addresses that received a validation email. Only set if `EMAIL` validation was used.
  late final pulumi.Output<List<String>> validationEmails;
  late final pulumi.Output<String> validationMethod;
  late final pulumi.Output<List<CertificateValidationOption>?>
      validationOptions;

  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificateAuthorityArn =
        registerOutput<String?>('certificateAuthorityArn');
    this.certificateBody = registerOutput<String?>('certificateBody');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.domainName = registerOutput<String>('domainName');
    this.domainValidationOptions =
        registerOutput<List<CertificateDomainValidationOption>>(
            'domainValidationOptions');
    this.earlyRenewalDuration = registerOutput<String?>('earlyRenewalDuration');
    this.keyAlgorithm = registerOutput<String>('keyAlgorithm');
    this.notAfter = registerOutput<String>('notAfter');
    this.notBefore = registerOutput<String>('notBefore');
    this.options = registerOutput<CertificateOptions>('options');
    this.pendingRenewal = registerOutput<bool>('pendingRenewal');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.renewalEligibility = registerOutput<String>('renewalEligibility');
    this.renewalSummaries =
        registerOutput<List<CertificateRenewalSummary>>('renewalSummaries');
    this.status = registerOutput<String>('status');
    this.subjectAlternativeNames =
        registerOutput<List<String>>('subjectAlternativeNames');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.validationEmails = registerOutput<List<String>>('validationEmails');
    this.validationMethod = registerOutput<String>('validationMethod');
    this.validationOptions =
        registerOutput<List<CertificateValidationOption>?>('validationOptions');
  }
}
