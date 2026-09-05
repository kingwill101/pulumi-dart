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
  final pulumi.Input<bool?>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool?>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<List<DomainBillingContact>?>? billingContacts;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? billingPrivacy;
  /// The name of the domain.
  final pulumi.Input<String> domainName;
  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  final pulumi.Input<int?>? durationInYears;
  /// The list of nameservers for the domain. See `nameServer` Blocks for more details.
  final pulumi.Input<List<DomainNameServer>?>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<DomainRegistrantContact> registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? registrantPrivacy;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<DomainTechContact> techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? techPrivacy;
  final pulumi.Input<DomainTimeouts?>? timeouts;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// &gt; **NOTE:** You must specify the same privacy setting for `adminPrivacy`, `registrantPrivacy` and `techPrivacy`.
  final pulumi.Input<bool?>? transferLock;

  /// Creates a new [DomainArgs].
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContacts] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [domainName] The name of the domain.
  /// [durationInYears] The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  /// [nameServers] The list of nameservers for the domain. See `nameServer` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [timeouts] Optional.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  const DomainArgs({
    required this.adminContact,
    this.adminPrivacy,
    this.autoRenew,
    this.billingContacts,
    this.billingPrivacy,
    required this.domainName,
    this.durationInYears,
    this.nameServers,
    required this.registrantContact,
    this.registrantPrivacy,
    this.tags,
    required this.techContact,
    this.techPrivacy,
    this.timeouts,
    this.transferLock,
  });

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
      adminContact: pulumi.Input.fromValue(DomainAdminContact.fromMap((map['adminContact']! as Map).cast<String, dynamic>())),
      adminPrivacy: (() { final guardedValue = map['adminPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingContacts: (() { final guardedValue = map['billingContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainBillingContact>(guardedValue, (value) => DomainBillingContact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      billingPrivacy: (() { final guardedValue = map['billingPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      durationInYears: (() { final guardedValue = map['durationInYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainNameServer>(guardedValue, (value) => DomainNameServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registrantContact: pulumi.Input.fromValue(DomainRegistrantContact.fromMap((map['registrantContact']! as Map).cast<String, dynamic>())),
      registrantPrivacy: (() { final guardedValue = map['registrantPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      techContact: pulumi.Input.fromValue(DomainTechContact.fromMap((map['techContact']! as Map).cast<String, dynamic>())),
      techPrivacy: (() { final guardedValue = map['techPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transferLock: (() { final guardedValue = map['transferLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
