import 'package:pulumi/pulumi.dart';
import '../certificate_domain_validation_option/certificate_domain_validation_option2.dart';
import 'certificate_args5.dart';

/// Manages a Lightsail certificate. Use this resource to create and manage SSL/TLS certificates for securing custom domains with your Lightsail resources.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Certificate` using the certificate name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/certificate:Certificate example example-certificate
/// ```
class Certificate5 extends CustomResource {
  /// ARN of the certificate.
  late final Output<String> arn;

  /// Date and time when the certificate was created.
  late final Output<String> createdAt;

  /// Domain name for which the certificate should be issued.
  late final Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  late final Output<List<CertificateDomainValidationOption2>>
      domainValidationOptions;

  /// Name of the certificate.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  late final Output<List<String>> subjectAlternativeNames;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Certificate5(
    String name, {
    CertificateArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.domainName = registerOutput<String>('domainName');
    this.domainValidationOptions =
        registerOutput<List<CertificateDomainValidationOption2>>(
            'domainValidationOptions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subjectAlternativeNames =
        registerOutput<List<String>>('subjectAlternativeNames');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
