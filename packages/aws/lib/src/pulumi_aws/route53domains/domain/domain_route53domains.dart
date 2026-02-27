import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_admin_contact/domain_admin_contact.dart';
import '../domain_billing_contact/domain_billing_contact.dart';
import '../domain_name_server/domain_name_server.dart';
import '../domain_registrant_contact/domain_registrant_contact.dart';
import '../domain_tech_contact/domain_tech_contact.dart';
import '../domain_timeouts/domain_timeouts_route53domains.dart';
import 'domain_route53domains_args.dart';

/// Provides a resource to manage a domain. This resource registers, renews and deregisters a domain name. If a domain name's lifecycle is managed outside of Terraform use the `aws.route53domains.RegisteredDomain` resource instead.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/domain:Domain example example.com
/// ```
class DomainRoute53domains extends pulumi.CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final pulumi.Output<String> abuseContactEmail;

  /// Phone number for reporting abuse.
  late final pulumi.Output<String> abuseContactPhone;

  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final pulumi.Output<DomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: `true`.
  late final pulumi.Output<bool> autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final pulumi.Output<List<DomainBillingContact>> billingContacts;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> billingPrivacy;

  /// The date when the domain was created as found in the response to a WHOIS query.
  late final pulumi.Output<String> creationDate;

  /// The name of the domain.
  late final pulumi.Output<String> domainName;

  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  late final pulumi.Output<int> durationInYears;

  /// The date when the registration for the domain is set to expire.
  late final pulumi.Output<String> expirationDate;

  /// The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  late final pulumi.Output<String> hostedZoneId;

  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  late final pulumi.Output<List<DomainNameServer>> nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  late final pulumi.Output<DomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> registrantPrivacy;

  /// Name of the registrar of the domain as identified in the registry.
  late final pulumi.Output<String> registrarName;

  /// Web address of the registrar.
  late final pulumi.Output<String> registrarUrl;

  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final pulumi.Output<List<String>> statusLists;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final pulumi.Output<DomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> techPrivacy;
  late final pulumi.Output<DomainTimeoutsRoute53domains?> timeouts;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  late final pulumi.Output<bool> transferLock;

  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final pulumi.Output<String> updatedDate;

  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final pulumi.Output<String> whoisServer;

  DomainRoute53domains(
    String name, {
    DomainRoute53domainsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact = registerOutput<DomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool>('adminPrivacy');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.billingContacts =
        registerOutput<List<DomainBillingContact>>('billingContacts');
    this.billingPrivacy = registerOutput<bool>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.durationInYears = registerOutput<int>('durationInYears');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.nameServers = registerOutput<List<DomainNameServer>>('nameServers');
    this.registrantContact =
        registerOutput<DomainRegistrantContact>('registrantContact');
    this.registrantPrivacy = registerOutput<bool>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact = registerOutput<DomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool>('techPrivacy');
    this.timeouts = registerOutput<DomainTimeoutsRoute53domains?>('timeouts');
    this.transferLock = registerOutput<bool>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }
}
