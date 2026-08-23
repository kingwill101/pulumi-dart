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
  /// The list of nameservers for the domain. See `nameServer` Blocks for more details.
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainTechContact>? techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? techPrivacy;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// &gt; **NOTE:** You must specify the same privacy setting for `adminPrivacy`, `registrantPrivacy` and `techPrivacy`.
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
  /// [nameServers] The list of nameservers for the domain. See `nameServer` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [registrarName] Name of the registrar of the domain as identified in the registry.
  /// [registrarUrl] Web address of the registrar.
  /// [reseller] Reseller of the domain.
  /// [statusLists] List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  /// [updatedDate] The last updated date of the domain as found in the response to a WHOIS query.
  /// [whoisServer] The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  const RegisteredDomainState({
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
      abuseContactEmail: (() { final guardedValue = map['abuseContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      abuseContactPhone: (() { final guardedValue = map['abuseContactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminContact: (() { final guardedValue = map['adminContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainAdminContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminPrivacy: (() { final guardedValue = map['adminPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingContact: (() { final guardedValue = map['billingContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainBillingContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingPrivacy: (() { final guardedValue = map['billingPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegisteredDomainNameServer>(guardedValue, (value) => RegisteredDomainNameServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registrantContact: (() { final guardedValue = map['registrantContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainRegistrantContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrantPrivacy: (() { final guardedValue = map['registrantPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrarName: (() { final guardedValue = map['registrarName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrarUrl: (() { final guardedValue = map['registrarUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reseller: (() { final guardedValue = map['reseller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusLists: (() { final guardedValue = map['statusLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      techContact: (() { final guardedValue = map['techContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainTechContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      techPrivacy: (() { final guardedValue = map['techPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transferLock: (() { final guardedValue = map['transferLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedDate: (() { final guardedValue = map['updatedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whoisServer: (() { final guardedValue = map['whoisServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
