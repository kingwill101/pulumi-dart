// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_domain_admin_contact.dart';
import 'registered_domain_billing_contact.dart';
import 'registered_domain_name_server.dart';
import 'registered_domain_registrant_contact.dart';
import 'registered_domain_tech_contact.dart';

/// Input properties used for looking up and filtering RegisteredDomain resources.
class RegisteredDomainState {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  final pulumi.Input<String>? abuseContactEmail;
  /// Phone number for reporting abuse.
  final pulumi.Input<String>? abuseContactPhone;
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainAdminContact>? adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainBillingContact>? billingContact;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? billingPrivacy;
  /// The date when the domain was created as found in the response to a WHOIS query.
  final pulumi.Input<String>? creationDate;
  /// The name of the registered domain.
  final pulumi.Input<String>? domainName;
  /// The date when the registration for the domain is set to expire.
  final pulumi.Input<String>? expirationDate;
  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  final pulumi.Input<List<RegisteredDomainNameServer>>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainRegistrantContact>? registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? registrantPrivacy;
  /// Name of the registrar of the domain as identified in the registry.
  final pulumi.Input<String>? registrarName;
  /// Web address of the registrar.
  final pulumi.Input<String>? registrarUrl;
  /// Reseller of the domain.
  final pulumi.Input<String>? reseller;
  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  final pulumi.Input<List<String>>? statusLists;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainTechContact>? techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? techPrivacy;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final pulumi.Input<bool>? transferLock;
  /// The last updated date of the domain as found in the response to a WHOIS query.
  final pulumi.Input<String>? updatedDate;
  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  final pulumi.Input<String>? whoisServer;

  /// Creates a new [RegisteredDomainState].
  /// [abuseContactEmail] Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  /// [abuseContactPhone] Phone number for reporting abuse.
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContact] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [creationDate] The date when the domain was created as found in the response to a WHOIS query.
  /// [domainName] The name of the registered domain.
  /// [expirationDate] The date when the registration for the domain is set to expire.
  /// [nameServers] The list of nameservers for the domain. See `name_server` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [registrarName] Name of the registrar of the domain as identified in the registry.
  /// [registrarUrl] Web address of the registrar.
  /// [reseller] Reseller of the domain.
  /// [statusLists] List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  /// [updatedDate] The last updated date of the domain as found in the response to a WHOIS query.
  /// [whoisServer] The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  RegisteredDomainState({
    pulumi.Output<String>? abuseContactEmail,
    pulumi.Output<String>? abuseContactPhone,
    pulumi.Output<RegisteredDomainAdminContact>? adminContact,
    pulumi.Output<bool>? adminPrivacy,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<RegisteredDomainBillingContact>? billingContact,
    pulumi.Output<bool>? billingPrivacy,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<List<RegisteredDomainNameServer>>? nameServers,
    pulumi.Output<RegisteredDomainRegistrantContact>? registrantContact,
    pulumi.Output<bool>? registrantPrivacy,
    pulumi.Output<String>? registrarName,
    pulumi.Output<String>? registrarUrl,
    pulumi.Output<String>? reseller,
    pulumi.Output<List<String>>? statusLists,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<RegisteredDomainTechContact>? techContact,
    pulumi.Output<bool>? techPrivacy,
    pulumi.Output<bool>? transferLock,
    pulumi.Output<String>? updatedDate,
    pulumi.Output<String>? whoisServer,
  }) :
      abuseContactEmail = pulumi.Input.asOptionalInput<String>(abuseContactEmail),
      abuseContactPhone = pulumi.Input.asOptionalInput<String>(abuseContactPhone),
      adminContact = pulumi.Input.asOptionalInput<RegisteredDomainAdminContact>(adminContact),
      adminPrivacy = pulumi.Input.asOptionalInput<bool>(adminPrivacy),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      billingContact = pulumi.Input.asOptionalInput<RegisteredDomainBillingContact>(billingContact),
      billingPrivacy = pulumi.Input.asOptionalInput<bool>(billingPrivacy),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      nameServers = pulumi.Input.asOptionalInput<List<RegisteredDomainNameServer>>(nameServers),
      registrantContact = pulumi.Input.asOptionalInput<RegisteredDomainRegistrantContact>(registrantContact),
      registrantPrivacy = pulumi.Input.asOptionalInput<bool>(registrantPrivacy),
      registrarName = pulumi.Input.asOptionalInput<String>(registrarName),
      registrarUrl = pulumi.Input.asOptionalInput<String>(registrarUrl),
      reseller = pulumi.Input.asOptionalInput<String>(reseller),
      statusLists = pulumi.Input.asOptionalInput<List<String>>(statusLists),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      techContact = pulumi.Input.asOptionalInput<RegisteredDomainTechContact>(techContact),
      techPrivacy = pulumi.Input.asOptionalInput<bool>(techPrivacy),
      transferLock = pulumi.Input.asOptionalInput<bool>(transferLock),
      updatedDate = pulumi.Input.asOptionalInput<String>(updatedDate),
      whoisServer = pulumi.Input.asOptionalInput<String>(whoisServer);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuseContactEmail': ?abuseContactEmail,
      'abuseContactPhone': ?abuseContactPhone,
      'adminContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainAdminContact, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'adminPrivacy': ?adminPrivacy,
      'autoRenew': ?autoRenew,
      'billingContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainBillingContact, Map<String, dynamic>>(billingContact, (value) => value.toMap()),
      'billingPrivacy': ?billingPrivacy,
      'creationDate': ?creationDate,
      'domainName': ?domainName,
      'expirationDate': ?expirationDate,
      'nameServers': ?pulumi.Input.mapOptionalInputValue<List<RegisteredDomainNameServer>, List<Map<String, dynamic>>>(nameServers, (value) => pulumi.Input.encodeList<RegisteredDomainNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrantContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainRegistrantContact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'registrantPrivacy': ?registrantPrivacy,
      'registrarName': ?registrarName,
      'registrarUrl': ?registrarUrl,
      'reseller': ?reseller,
      'statusLists': ?statusLists,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'techContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainTechContact, Map<String, dynamic>>(techContact, (value) => value.toMap()),
      'techPrivacy': ?techPrivacy,
      'transferLock': ?transferLock,
      'updatedDate': ?updatedDate,
      'whoisServer': ?whoisServer,
    };
  }

  factory RegisteredDomainState.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainState(
      abuseContactEmail: map['abuseContactEmail'] == null ? null : pulumi.Output.create<String>(map['abuseContactEmail'] as String),
      abuseContactPhone: map['abuseContactPhone'] == null ? null : pulumi.Output.create<String>(map['abuseContactPhone'] as String),
      adminContact: map['adminContact'] == null ? null : pulumi.Output.create<RegisteredDomainAdminContact>(RegisteredDomainAdminContact.fromMap((map['adminContact'] as Map).cast<String, dynamic>())),
      adminPrivacy: map['adminPrivacy'] == null ? null : pulumi.Output.create<bool>(map['adminPrivacy'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      billingContact: map['billingContact'] == null ? null : pulumi.Output.create<RegisteredDomainBillingContact>(RegisteredDomainBillingContact.fromMap((map['billingContact'] as Map).cast<String, dynamic>())),
      billingPrivacy: map['billingPrivacy'] == null ? null : pulumi.Output.create<bool>(map['billingPrivacy'] as bool),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<RegisteredDomainNameServer>>(pulumi.Input.decodeList<RegisteredDomainNameServer>(map['nameServers'], (value) => RegisteredDomainNameServer.fromMap((value as Map).cast<String, dynamic>()))),
      registrantContact: map['registrantContact'] == null ? null : pulumi.Output.create<RegisteredDomainRegistrantContact>(RegisteredDomainRegistrantContact.fromMap((map['registrantContact'] as Map).cast<String, dynamic>())),
      registrantPrivacy: map['registrantPrivacy'] == null ? null : pulumi.Output.create<bool>(map['registrantPrivacy'] as bool),
      registrarName: map['registrarName'] == null ? null : pulumi.Output.create<String>(map['registrarName'] as String),
      registrarUrl: map['registrarUrl'] == null ? null : pulumi.Output.create<String>(map['registrarUrl'] as String),
      reseller: map['reseller'] == null ? null : pulumi.Output.create<String>(map['reseller'] as String),
      statusLists: map['statusLists'] == null ? null : pulumi.Output.create<List<String>>((map['statusLists'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      techContact: map['techContact'] == null ? null : pulumi.Output.create<RegisteredDomainTechContact>(RegisteredDomainTechContact.fromMap((map['techContact'] as Map).cast<String, dynamic>())),
      techPrivacy: map['techPrivacy'] == null ? null : pulumi.Output.create<bool>(map['techPrivacy'] as bool),
      transferLock: map['transferLock'] == null ? null : pulumi.Output.create<bool>(map['transferLock'] as bool),
      updatedDate: map['updatedDate'] == null ? null : pulumi.Output.create<String>(map['updatedDate'] as String),
      whoisServer: map['whoisServer'] == null ? null : pulumi.Output.create<String>(map['whoisServer'] as String),
    );
  }
}

