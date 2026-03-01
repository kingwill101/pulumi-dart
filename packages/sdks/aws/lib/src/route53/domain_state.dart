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
  final pulumi.Input<String>? abuseContactEmail;
  /// Phone number for reporting abuse.
  final pulumi.Input<String>? abuseContactPhone;
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final pulumi.Input<DomainAdminContact>? adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<List<DomainBillingContact>>? billingContacts;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? billingPrivacy;
  /// The date when the domain was created as found in the response to a WHOIS query.
  final pulumi.Input<String>? creationDate;
  /// The name of the domain.
  final pulumi.Input<String>? domainName;
  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  final pulumi.Input<int>? durationInYears;
  /// The date when the registration for the domain is set to expire.
  final pulumi.Input<String>? expirationDate;
  /// The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  final pulumi.Input<String>? hostedZoneId;
  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  final pulumi.Input<List<DomainNameServer>>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<DomainRegistrantContact>? registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? registrantPrivacy;
  /// Name of the registrar of the domain as identified in the registry.
  final pulumi.Input<String>? registrarName;
  /// Web address of the registrar.
  final pulumi.Input<String>? registrarUrl;
  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  final pulumi.Input<List<String>>? statusLists;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<DomainTechContact>? techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? techPrivacy;
  final pulumi.Input<DomainTimeouts>? timeouts;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final pulumi.Input<bool>? transferLock;
  /// The last updated date of the domain as found in the response to a WHOIS query.
  final pulumi.Input<String>? updatedDate;
  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  final pulumi.Input<String>? whoisServer;

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
  /// [nameServers] The list of nameservers for the domain. See `name_server` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [registrarName] Name of the registrar of the domain as identified in the registry.
  /// [registrarUrl] Web address of the registrar.
  /// [statusLists] List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [timeouts] Optional.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  /// [updatedDate] The last updated date of the domain as found in the response to a WHOIS query.
  /// [whoisServer] The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  DomainState({
    pulumi.Output<String>? abuseContactEmail,
    pulumi.Output<String>? abuseContactPhone,
    pulumi.Output<DomainAdminContact>? adminContact,
    pulumi.Output<bool>? adminPrivacy,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<List<DomainBillingContact>>? billingContacts,
    pulumi.Output<bool>? billingPrivacy,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? domainName,
    pulumi.Output<int>? durationInYears,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<List<DomainNameServer>>? nameServers,
    pulumi.Output<DomainRegistrantContact>? registrantContact,
    pulumi.Output<bool>? registrantPrivacy,
    pulumi.Output<String>? registrarName,
    pulumi.Output<String>? registrarUrl,
    pulumi.Output<List<String>>? statusLists,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DomainTechContact>? techContact,
    pulumi.Output<bool>? techPrivacy,
    pulumi.Output<DomainTimeouts>? timeouts,
    pulumi.Output<bool>? transferLock,
    pulumi.Output<String>? updatedDate,
    pulumi.Output<String>? whoisServer,
  }) :
      abuseContactEmail = pulumi.Input.asOptionalInput<String>(abuseContactEmail),
      abuseContactPhone = pulumi.Input.asOptionalInput<String>(abuseContactPhone),
      adminContact = pulumi.Input.asOptionalInput<DomainAdminContact>(adminContact),
      adminPrivacy = pulumi.Input.asOptionalInput<bool>(adminPrivacy),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      billingContacts = pulumi.Input.asOptionalInput<List<DomainBillingContact>>(billingContacts),
      billingPrivacy = pulumi.Input.asOptionalInput<bool>(billingPrivacy),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      durationInYears = pulumi.Input.asOptionalInput<int>(durationInYears),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      nameServers = pulumi.Input.asOptionalInput<List<DomainNameServer>>(nameServers),
      registrantContact = pulumi.Input.asOptionalInput<DomainRegistrantContact>(registrantContact),
      registrantPrivacy = pulumi.Input.asOptionalInput<bool>(registrantPrivacy),
      registrarName = pulumi.Input.asOptionalInput<String>(registrarName),
      registrarUrl = pulumi.Input.asOptionalInput<String>(registrarUrl),
      statusLists = pulumi.Input.asOptionalInput<List<String>>(statusLists),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      techContact = pulumi.Input.asOptionalInput<DomainTechContact>(techContact),
      techPrivacy = pulumi.Input.asOptionalInput<bool>(techPrivacy),
      timeouts = pulumi.Input.asOptionalInput<DomainTimeouts>(timeouts),
      transferLock = pulumi.Input.asOptionalInput<bool>(transferLock),
      updatedDate = pulumi.Input.asOptionalInput<String>(updatedDate),
      whoisServer = pulumi.Input.asOptionalInput<String>(whoisServer);

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
      abuseContactEmail: map['abuseContactEmail'] == null ? null : pulumi.Output.create<String>(map['abuseContactEmail'] as String),
      abuseContactPhone: map['abuseContactPhone'] == null ? null : pulumi.Output.create<String>(map['abuseContactPhone'] as String),
      adminContact: map['adminContact'] == null ? null : pulumi.Output.create<DomainAdminContact>(DomainAdminContact.fromMap((map['adminContact'] as Map).cast<String, dynamic>())),
      adminPrivacy: map['adminPrivacy'] == null ? null : pulumi.Output.create<bool>(map['adminPrivacy'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      billingContacts: map['billingContacts'] == null ? null : pulumi.Output.create<List<DomainBillingContact>>(pulumi.Input.decodeList<DomainBillingContact>(map['billingContacts'], (value) => DomainBillingContact.fromMap((value as Map).cast<String, dynamic>()))),
      billingPrivacy: map['billingPrivacy'] == null ? null : pulumi.Output.create<bool>(map['billingPrivacy'] as bool),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      durationInYears: map['durationInYears'] == null ? null : pulumi.Output.create<int>(map['durationInYears'] as int),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<DomainNameServer>>(pulumi.Input.decodeList<DomainNameServer>(map['nameServers'], (value) => DomainNameServer.fromMap((value as Map).cast<String, dynamic>()))),
      registrantContact: map['registrantContact'] == null ? null : pulumi.Output.create<DomainRegistrantContact>(DomainRegistrantContact.fromMap((map['registrantContact'] as Map).cast<String, dynamic>())),
      registrantPrivacy: map['registrantPrivacy'] == null ? null : pulumi.Output.create<bool>(map['registrantPrivacy'] as bool),
      registrarName: map['registrarName'] == null ? null : pulumi.Output.create<String>(map['registrarName'] as String),
      registrarUrl: map['registrarUrl'] == null ? null : pulumi.Output.create<String>(map['registrarUrl'] as String),
      statusLists: map['statusLists'] == null ? null : pulumi.Output.create<List<String>>((map['statusLists'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      techContact: map['techContact'] == null ? null : pulumi.Output.create<DomainTechContact>(DomainTechContact.fromMap((map['techContact'] as Map).cast<String, dynamic>())),
      techPrivacy: map['techPrivacy'] == null ? null : pulumi.Output.create<bool>(map['techPrivacy'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DomainTimeouts>(DomainTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transferLock: map['transferLock'] == null ? null : pulumi.Output.create<bool>(map['transferLock'] as bool),
      updatedDate: map['updatedDate'] == null ? null : pulumi.Output.create<String>(map['updatedDate'] as String),
      whoisServer: map['whoisServer'] == null ? null : pulumi.Output.create<String>(map['whoisServer'] as String),
    );
  }
}

