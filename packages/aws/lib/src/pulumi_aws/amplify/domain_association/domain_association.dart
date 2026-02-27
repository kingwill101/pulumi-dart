import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_association_certificate_settings/domain_association_certificate_settings.dart';
import '../domain_association_sub_domain/domain_association_sub_domain.dart';
import 'domain_association_args.dart';

/// Provides an Amplify Domain Association resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify domain association using `app_id` and `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/domainAssociation:DomainAssociation app d2ypk4k47z8u6/example.com
/// ```
class DomainAssociation extends pulumi.CustomResource {
  /// Unique ID for an Amplify app.
  late final pulumi.Output<String> appId;

  /// ARN for the domain association.
  late final pulumi.Output<String> arn;

  /// The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  late final pulumi.Output<DomainAssociationCertificateSettings>
      certificateSettings;

  /// DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  late final pulumi.Output<String> certificateVerificationDnsRecord;

  /// Domain name for the domain association.
  late final pulumi.Output<String> domainName;

  /// Enables the automated creation of subdomains for branches.
  late final pulumi.Output<bool?> enableAutoSubDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Setting for the subdomain. Documented below.
  late final pulumi.Output<List<DomainAssociationSubDomain>> subDomains;

  /// If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  late final pulumi.Output<bool?> waitForVerification;

  DomainAssociation(
    String name, {
    DomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amplify/domainAssociation:DomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.certificateSettings =
        registerOutput<DomainAssociationCertificateSettings>(
            'certificateSettings');
    this.certificateVerificationDnsRecord =
        registerOutput<String>('certificateVerificationDnsRecord');
    this.domainName = registerOutput<String>('domainName');
    this.enableAutoSubDomain = registerOutput<bool?>('enableAutoSubDomain');
    this.region = registerOutput<String>('region');
    this.subDomains =
        registerOutput<List<DomainAssociationSubDomain>>('subDomains');
    this.waitForVerification = registerOutput<bool?>('waitForVerification');
  }
}
