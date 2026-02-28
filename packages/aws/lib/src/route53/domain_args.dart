// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_admin_contact.dart';
import 'domain_billing_contact.dart';
import 'domain_name_server.dart';
import 'domain_registrant_contact.dart';
import 'domain_tech_contact.dart';
import 'domain_timeouts.dart';

/// {@template pulumi_route53_domains_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_route53_domains_domain_domain_args_doc}
class DomainArgs {
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final pulumi.Input<DomainAdminContact> adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<List<DomainBillingContact>>? billingContacts;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? billingPrivacy;
  /// The name of the domain.
  final pulumi.Input<String> domainName;
  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  final pulumi.Input<int>? durationInYears;
  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  final pulumi.Input<List<DomainNameServer>>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<DomainRegistrantContact> registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? registrantPrivacy;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<DomainTechContact> techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? techPrivacy;
  final pulumi.Input<DomainTimeouts>? timeouts;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final pulumi.Input<bool>? transferLock;

  /// Creates a new [DomainArgs].
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContacts] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [domainName] The name of the domain.
  /// [durationInYears] The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  /// [nameServers] The list of nameservers for the domain. See `name_server` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [timeouts] Optional.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  DomainArgs({
    required DomainAdminContact adminContact,
    bool? adminPrivacy,
    bool? autoRenew,
    List<DomainBillingContact>? billingContacts,
    bool? billingPrivacy,
    required String domainName,
    int? durationInYears,
    List<DomainNameServer>? nameServers,
    required DomainRegistrantContact registrantContact,
    bool? registrantPrivacy,
    Map<String, String>? tags,
    required DomainTechContact techContact,
    bool? techPrivacy,
    DomainTimeouts? timeouts,
    bool? transferLock,
  }) :
      adminContact = pulumi.Input.asInput<DomainAdminContact>(adminContact),
      adminPrivacy = pulumi.Input.asOptionalInput<bool>(adminPrivacy),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      billingContacts = pulumi.Input.asOptionalInput<List<DomainBillingContact>>(billingContacts),
      billingPrivacy = pulumi.Input.asOptionalInput<bool>(billingPrivacy),
      domainName = pulumi.Input.asInput<String>(domainName),
      durationInYears = pulumi.Input.asOptionalInput<int>(durationInYears),
      nameServers = pulumi.Input.asOptionalInput<List<DomainNameServer>>(nameServers),
      registrantContact = pulumi.Input.asInput<DomainRegistrantContact>(registrantContact),
      registrantPrivacy = pulumi.Input.asOptionalInput<bool>(registrantPrivacy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      techContact = pulumi.Input.asInput<DomainTechContact>(techContact),
      techPrivacy = pulumi.Input.asOptionalInput<bool>(techPrivacy),
      timeouts = pulumi.Input.asOptionalInput<DomainTimeouts>(timeouts),
      transferLock = pulumi.Input.asOptionalInput<bool>(transferLock);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': pulumi.Input.mapInputValue<DomainAdminContact, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'adminPrivacy': ?adminPrivacy,
      'autoRenew': ?autoRenew,
      'billingContacts': ?pulumi.Input.mapOptionalInputValue<List<DomainBillingContact>, List<Map<String, dynamic>>>(billingContacts, (value) => pulumi.Input.encodeList<DomainBillingContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'billingPrivacy': ?billingPrivacy,
      'domainName': domainName,
      'durationInYears': ?durationInYears,
      'nameServers': ?pulumi.Input.mapOptionalInputValue<List<DomainNameServer>, List<Map<String, dynamic>>>(nameServers, (value) => pulumi.Input.encodeList<DomainNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrantContact': pulumi.Input.mapInputValue<DomainRegistrantContact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'registrantPrivacy': ?registrantPrivacy,
      'tags': ?tags,
      'techContact': pulumi.Input.mapInputValue<DomainTechContact, Map<String, dynamic>>(techContact, (value) => value.toMap()),
      'techPrivacy': ?techPrivacy,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DomainTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transferLock': ?transferLock,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      adminContact: DomainAdminContact.fromMap((map['adminContact'] as Map).cast<String, dynamic>()),
      adminPrivacy: map['adminPrivacy'] == null ? null : map['adminPrivacy'] as bool,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      billingContacts: map['billingContacts'] == null ? null : pulumi.Input.decodeList<DomainBillingContact>(map['billingContacts'], (value) => DomainBillingContact.fromMap((value as Map).cast<String, dynamic>())),
      billingPrivacy: map['billingPrivacy'] == null ? null : map['billingPrivacy'] as bool,
      domainName: map['domainName'] as String,
      durationInYears: map['durationInYears'] == null ? null : map['durationInYears'] as int,
      nameServers: map['nameServers'] == null ? null : pulumi.Input.decodeList<DomainNameServer>(map['nameServers'], (value) => DomainNameServer.fromMap((value as Map).cast<String, dynamic>())),
      registrantContact: DomainRegistrantContact.fromMap((map['registrantContact'] as Map).cast<String, dynamic>()),
      registrantPrivacy: map['registrantPrivacy'] == null ? null : map['registrantPrivacy'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      techContact: DomainTechContact.fromMap((map['techContact'] as Map).cast<String, dynamic>()),
      techPrivacy: map['techPrivacy'] == null ? null : map['techPrivacy'] as bool,
      timeouts: map['timeouts'] == null ? null : DomainTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      transferLock: map['transferLock'] == null ? null : map['transferLock'] as bool,
    );
  }
}

