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
    this.abuseContactEmail,
    this.abuseContactPhone,
    this.adminContact,
    this.adminPrivacy,
    this.autoRenew,
    this.billingContact,
    this.billingPrivacy,
    this.creationDate,
    this.domainName,
    this.expirationDate,
    this.nameServers,
    this.registrantContact,
    this.registrantPrivacy,
    this.registrarName,
    this.registrarUrl,
    this.reseller,
    this.statusLists,
    this.tags,
    this.tagsAll,
    this.techContact,
    this.techPrivacy,
    this.transferLock,
    this.updatedDate,
    this.whoisServer,
  });

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
      abuseContactEmail: map['abuseContactEmail'] == null ? null : (map['abuseContactEmail'] as String).input(),
      abuseContactPhone: map['abuseContactPhone'] == null ? null : (map['abuseContactPhone'] as String).input(),
      adminContact: map['adminContact'] == null ? null : (RegisteredDomainAdminContact.fromMap((map['adminContact'] as Map).cast<String, dynamic>())).input(),
      adminPrivacy: map['adminPrivacy'] == null ? null : (map['adminPrivacy'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      billingContact: map['billingContact'] == null ? null : (RegisteredDomainBillingContact.fromMap((map['billingContact'] as Map).cast<String, dynamic>())).input(),
      billingPrivacy: map['billingPrivacy'] == null ? null : (map['billingPrivacy'] as bool).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate'] as String).input(),
      nameServers: map['nameServers'] == null ? null : (pulumi.Input.decodeList<RegisteredDomainNameServer>(map['nameServers'], (value) => RegisteredDomainNameServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      registrantContact: map['registrantContact'] == null ? null : (RegisteredDomainRegistrantContact.fromMap((map['registrantContact'] as Map).cast<String, dynamic>())).input(),
      registrantPrivacy: map['registrantPrivacy'] == null ? null : (map['registrantPrivacy'] as bool).input(),
      registrarName: map['registrarName'] == null ? null : (map['registrarName'] as String).input(),
      registrarUrl: map['registrarUrl'] == null ? null : (map['registrarUrl'] as String).input(),
      reseller: map['reseller'] == null ? null : (map['reseller'] as String).input(),
      statusLists: map['statusLists'] == null ? null : ((map['statusLists'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      techContact: map['techContact'] == null ? null : (RegisteredDomainTechContact.fromMap((map['techContact'] as Map).cast<String, dynamic>())).input(),
      techPrivacy: map['techPrivacy'] == null ? null : (map['techPrivacy'] as bool).input(),
      transferLock: map['transferLock'] == null ? null : (map['transferLock'] as bool).input(),
      updatedDate: map['updatedDate'] == null ? null : (map['updatedDate'] as String).input(),
      whoisServer: map['whoisServer'] == null ? null : (map['whoisServer'] as String).input(),
    );
  }
}

