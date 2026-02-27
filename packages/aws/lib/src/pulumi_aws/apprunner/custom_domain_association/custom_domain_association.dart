import 'package:pulumi/pulumi.dart';
import '../custom_domain_association_certificate_validation_record/custom_domain_association_certificate_validation_record.dart';
import 'custom_domain_association_args.dart';

/// Manages an App Runner Custom Domain association.
///
/// > **NOTE:** After creation, you must use the information in the `certificate_validation_records` attribute to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain (found in the `dns_target` attribute) and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Custom Domain Associations using the `domain_name` and `service_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/customDomainAssociation:CustomDomainAssociation example example.com,arn:aws:apprunner:us-east-1:123456789012:service/example-app/8fe1e10304f84fd2b0df550fe98a71fa
/// ```
class CustomDomainAssociation extends CustomResource {
  /// A set of certificate CNAME records used for this domain name. See Certificate Validation Records below for more details.
  late final Output<List<CustomDomainAssociationCertificateValidationRecord>>
      certificateValidationRecords;

  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  late final Output<String> dnsTarget;

  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  late final Output<String> domainName;

  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  late final Output<bool?> enableWwwSubdomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the App Runner service.
  late final Output<String> serviceArn;

  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  late final Output<String> status;

  CustomDomainAssociation(
    String name, {
    CustomDomainAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateValidationRecords = registerOutput<
            List<CustomDomainAssociationCertificateValidationRecord>>(
        'certificateValidationRecords');
    this.dnsTarget = registerOutput<String>('dnsTarget');
    this.domainName = registerOutput<String>('domainName');
    this.enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
  }
}
