// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_domain_admin_contact.dart';
import 'registered_domain_billing_contact.dart';
import 'registered_domain_name_server.dart';
import 'registered_domain_registrant_contact.dart';
import 'registered_domain_tech_contact.dart';

/// {@template pulumi_route53_domains_registered_domain_registered_domain_args_doc}
/// The set of arguments for RegisteredDomain.
/// {@endtemplate}
/// {@macro pulumi_route53_domains_registered_domain_registered_domain_args_doc}
class RegisteredDomainArgs {
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainAdminContact?>? adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool?>? autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainBillingContact?>? billingContact;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? billingPrivacy;
  /// The name of the registered domain.
  final pulumi.Input<String> domainName;
  /// The list of nameservers for the domain. See `nameServer` Blocks for more details.
  final pulumi.Input<List<RegisteredDomainNameServer>?>? nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainRegistrantContact?>? registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? registrantPrivacy;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainTechContact?>? techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool?>? techPrivacy;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// &gt; **NOTE:** You must specify the same privacy setting for `adminPrivacy`, `registrantPrivacy` and `techPrivacy`.
  final pulumi.Input<bool?>? transferLock;

  /// Creates a new [RegisteredDomainArgs].
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContact] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [domainName] The name of the registered domain.
  /// [nameServers] The list of nameservers for the domain. See `nameServer` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  const RegisteredDomainArgs({
    this.adminContact,
    this.adminPrivacy,
    this.autoRenew,
    this.billingContact,
    this.billingPrivacy,
    required this.domainName,
    this.nameServers,
    this.registrantContact,
    this.registrantPrivacy,
    this.tags,
    this.techContact,
    this.techPrivacy,
    this.transferLock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainAdminContact, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'adminPrivacy': ?adminPrivacy,
      'autoRenew': ?autoRenew,
      'billingContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainBillingContact, Map<String, dynamic>>(billingContact, (value) => value.toMap()),
      'billingPrivacy': ?billingPrivacy,
      'domainName': domainName,
      'nameServers': ?pulumi.Input.mapOptionalInputValue<List<RegisteredDomainNameServer>, List<Map<String, dynamic>>>(nameServers, (value) => pulumi.Input.encodeList<RegisteredDomainNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrantContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainRegistrantContact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'registrantPrivacy': ?registrantPrivacy,
      'tags': ?tags,
      'techContact': ?pulumi.Input.mapOptionalInputValue<RegisteredDomainTechContact, Map<String, dynamic>>(techContact, (value) => value.toMap()),
      'techPrivacy': ?techPrivacy,
      'transferLock': ?transferLock,
    };
  }

  factory RegisteredDomainArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainArgs(
      adminContact: (() { final guardedValue = map['adminContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainAdminContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminPrivacy: (() { final guardedValue = map['adminPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingContact: (() { final guardedValue = map['billingContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainBillingContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingPrivacy: (() { final guardedValue = map['billingPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegisteredDomainNameServer>(guardedValue, (value) => RegisteredDomainNameServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registrantContact: (() { final guardedValue = map['registrantContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainRegistrantContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrantPrivacy: (() { final guardedValue = map['registrantPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      techContact: (() { final guardedValue = map['techContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegisteredDomainTechContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      techPrivacy: (() { final guardedValue = map['techPrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transferLock: (() { final guardedValue = map['transferLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
