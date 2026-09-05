// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_admin_contact.dart';
import 'domain_billing_contact.dart';
import 'domain_name_server.dart';
import 'domain_registrant_contact.dart';
import 'domain_tech_contact.dart';
import 'domain_timeouts.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  final pulumi.Input<String?>? abuseContactEmail;
  /// Phone number for reporting abuse.
  final pulumi.Input<String?>? abuseContactPhone;
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final pulumi.Input<DomainAdminContact?>? adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool?>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<List<DomainBillingContact>?>? billingContacts;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? billingPrivacy;
  /// The date when the domain was created as found in the response to a WHOIS query.
  final pulumi.Input<String?>? creationDate;
  /// The name of the domain.
  final pulumi.Input<String?>? domainName;
  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  final pulumi.Input<int?>? durationInYears;
  /// The date when the registration for the domain is set to expire.
  final pulumi.Input<String?>? expirationDate;
  /// The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  final pulumi.Input<String?>? hostedZoneId;
  /// The list of nameservers for the domain. See `nameServer` Blocks for more details.
  final pulumi.Input<List<DomainNameServer>?>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<DomainRegistrantContact?>? registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? registrantPrivacy;
  /// Name of the registrar of the domain as identified in the registry.
  final pulumi.Input<String?>? registrarName;
  /// Web address of the registrar.
  final pulumi.Input<String?>? registrarUrl;
  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  final pulumi.Input<List<String>?>? statusLists;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<DomainTechContact?>? techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? techPrivacy;
  final pulumi.Input<DomainTimeouts?>? timeouts;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// &gt; **NOTE:** You must specify the same privacy setting for `adminPrivacy`, `registrantPrivacy` and `techPrivacy`.
  final pulumi.Input<bool?>? transferLock;
  /// The last updated date of the domain as found in the response to a WHOIS query.
  final pulumi.Input<String?>? updatedDate;
  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  final pulumi.Input<String?>? whoisServer;

  /// Creates a new [DomainState].
  /// [abuseContactEmail] Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  /// [abuseContactPhone] Phone number for reporting abuse.
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContacts] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [creationDate] The date when the domain was created as found in the response to a WHOIS query.
  /// [domainName] The name of the domain.
  /// [durationInYears] The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  /// [expirationDate] The date when the registration for the domain is set to expire.
  /// [hostedZoneId] The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  /// [nameServers] The list of nameservers for the domain. See `nameServer` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [registrarName] Name of the registrar of the domain as identified in the registry.
  /// [registrarUrl] Web address of the registrar.
  /// [statusLists] List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [timeouts] Optional.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  /// [updatedDate] The last updated date of the domain as found in the response to a WHOIS query.
  /// [whoisServer] The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  const DomainState({
    this.abuseContactEmail,
    this.abuseContactPhone,
    this.adminContact,
    this.adminPrivacy,
    this.autoRenew,
    this.billingContacts,
    this.billingPrivacy,
    this.creationDate,
    this.domainName,
    this.durationInYears,
    this.expirationDate,
    this.hostedZoneId,
    this.nameServers,
    this.registrantContact,
    this.registrantPrivacy,
    this.registrarName,
    this.registrarUrl,
    this.statusLists,
    this.tags,
    this.tagsAll,
    this.techContact,
    this.techPrivacy,
    this.timeouts,
    this.transferLock,
    this.updatedDate,
    this.whoisServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuseContactEmail': ?abuseContactEmail,
      'abuseContactPhone': ?abuseContactPhone,
      'adminContact': ?pulumi.Input.mapOptionalInputValue<DomainAdminContact, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'adminPrivacy': ?adminPrivacy,
      'autoRenew': ?autoRenew,
      'billingContacts': ?pulumi.Input.mapOptionalInputValue<List<DomainBillingContact>, List<Map<String, dynamic>>>(billingContacts, (value) => pulumi.Input.encodeList<DomainBillingContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'billingPrivacy': ?billingPrivacy,
      'creationDate': ?creationDate,
      'domainName': ?domainName,
      'durationInYears': ?durationInYears,
      'expirationDate': ?expirationDate,
      'hostedZoneId': ?hostedZoneId,
      'nameServers': ?pulumi.Input.mapOptionalInputValue<List<DomainNameServer>, List<Map<String, dynamic>>>(nameServers, (value) => pulumi.Input.encodeList<DomainNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrantContact': ?pulumi.Input.mapOptionalInputValue<DomainRegistrantContact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'registrantPrivacy': ?registrantPrivacy,
      'registrarName': ?registrarName,
      'registrarUrl': ?registrarUrl,
      'statusLists': ?statusLists,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'techContact': ?pulumi.Input.mapOptionalInputValue<DomainTechContact, Map<String, dynamic>>(techContact, (value) => value.toMap()),
      'techPrivacy': ?techPrivacy,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DomainTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transferLock': ?transferLock,
      'updatedDate': ?updatedDate,
      'whoisServer': ?whoisServer,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      abuseContactEmail: (() { final guardedValue = map['abuseContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      abuseContactPhone: (() { final guardedValue = map['abuseContactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminContact: (() { final guardedValue = map['adminContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAdminContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminPrivacy: (() { final guardedValue = map['adminPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingContacts: (() { final guardedValue = map['billingContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainBillingContact>(guardedValue, (value) => DomainBillingContact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      billingPrivacy: (() { final guardedValue = map['billingPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationInYears: (() { final guardedValue = map['durationInYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainNameServer>(guardedValue, (value) => DomainNameServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registrantContact: (() { final guardedValue = map['registrantContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRegistrantContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrantPrivacy: (() { final guardedValue = map['registrantPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrarName: (() { final guardedValue = map['registrarName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrarUrl: (() { final guardedValue = map['registrarUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusLists: (() { final guardedValue = map['statusLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      techContact: (() { final guardedValue = map['techContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainTechContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      techPrivacy: (() { final guardedValue = map['techPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transferLock: (() { final guardedValue = map['transferLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedDate: (() { final guardedValue = map['updatedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whoisServer: (() { final guardedValue = map['whoisServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
