import 'package:pulumi/pulumi.dart' as pulumi;
import '../registered_domain_admin_contact/registered_domain_admin_contact.dart';
import '../registered_domain_billing_contact/registered_domain_billing_contact.dart';
import '../registered_domain_name_server/registered_domain_name_server.dart';
import '../registered_domain_registrant_contact/registered_domain_registrant_contact.dart';
import '../registered_domain_tech_contact/registered_domain_tech_contact.dart';
import 'registered_domain_args.dart';

/// Provides a resource to manage a domain that has been [registered](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) and associated with the current AWS account. To register, renew and deregister a domain use the `aws.route53domains.Domain` resource instead.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.route53domains.RegisteredDomain` resource behaves differently from normal resources in that if a domain has been registered, the provider does not _register_ this domain, but instead "adopts" it into management. A destroy does not delete the domain but does remove the resource from state.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import domains using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/registeredDomain:RegisteredDomain example example.com
/// ```
class RegisteredDomain extends pulumi.CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final pulumi.Output<String> abuseContactEmail;

  /// Phone number for reporting abuse.
  late final pulumi.Output<String> abuseContactPhone;

  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: `true`.
  late final pulumi.Output<bool?> autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainBillingContact> billingContact;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> billingPrivacy;

  /// The date when the domain was created as found in the response to a WHOIS query.
  late final pulumi.Output<String> creationDate;

  /// The name of the registered domain.
  late final pulumi.Output<String> domainName;

  /// The date when the registration for the domain is set to expire.
  late final pulumi.Output<String> expirationDate;

  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  late final pulumi.Output<List<RegisteredDomainNameServer>> nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> registrantPrivacy;

  /// Name of the registrar of the domain as identified in the registry.
  late final pulumi.Output<String> registrarName;

  /// Web address of the registrar.
  late final pulumi.Output<String> registrarUrl;

  /// Reseller of the domain.
  late final pulumi.Output<String> reseller;

  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final pulumi.Output<List<String>> statusLists;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> techPrivacy;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  late final pulumi.Output<bool?> transferLock;

  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final pulumi.Output<String> updatedDate;

  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final pulumi.Output<String> whoisServer;

  RegisteredDomain(
    String name, {
    RegisteredDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/registeredDomain:RegisteredDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact =
        registerOutput<RegisteredDomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool?>('adminPrivacy');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.billingContact =
        registerOutput<RegisteredDomainBillingContact>('billingContact');
    this.billingPrivacy = registerOutput<bool?>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.nameServers =
        registerOutput<List<RegisteredDomainNameServer>>('nameServers');
    this.registrantContact =
        registerOutput<RegisteredDomainRegistrantContact>('registrantContact');
    this.registrantPrivacy = registerOutput<bool?>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.reseller = registerOutput<String>('reseller');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact =
        registerOutput<RegisteredDomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool?>('techPrivacy');
    this.transferLock = registerOutput<bool?>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }
}
