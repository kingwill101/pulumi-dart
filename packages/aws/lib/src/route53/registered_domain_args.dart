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
  final pulumi.Input<RegisteredDomainAdminContact>? adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final pulumi.Input<bool>? autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainBillingContact>? billingContact;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? billingPrivacy;

  /// The name of the registered domain.
  final pulumi.Input<String> domainName;

  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  final pulumi.Input<List<RegisteredDomainNameServer>>? nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainRegistrantContact>? registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? registrantPrivacy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  final pulumi.Input<RegisteredDomainTechContact>? techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final pulumi.Input<bool>? techPrivacy;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final pulumi.Input<bool>? transferLock;

  /// Creates a new [RegisteredDomainArgs].
  /// [adminContact] Details about the domain administrative contact. See Contact Blocks for more details.
  /// [adminPrivacy] Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  /// [autoRenew] Whether the domain registration is set to renew automatically. Default: `true`.
  /// [billingContact] Details about the domain billing contact. See Contact Blocks for more details.
  /// [billingPrivacy] Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  /// [domainName] The name of the registered domain.
  /// [nameServers] The list of nameservers for the domain. See `name_server` Blocks for more details.
  /// [registrantContact] Details about the domain registrant. See Contact Blocks for more details.
  /// [registrantPrivacy] Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [techContact] Details about the domain technical contact. See Contact Blocks for more details.
  /// [techPrivacy] Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  /// [transferLock] Whether the domain is locked for transfer. Default: `true`.
  RegisteredDomainArgs({
    RegisteredDomainAdminContact? adminContact,
    bool? adminPrivacy,
    bool? autoRenew,
    RegisteredDomainBillingContact? billingContact,
    bool? billingPrivacy,
    required String domainName,
    List<RegisteredDomainNameServer>? nameServers,
    RegisteredDomainRegistrantContact? registrantContact,
    bool? registrantPrivacy,
    Map<String, String>? tags,
    RegisteredDomainTechContact? techContact,
    bool? techPrivacy,
    bool? transferLock,
  }) : adminContact = pulumi
           .Input.asOptionalInput<RegisteredDomainAdminContact>(adminContact),
       adminPrivacy = pulumi.Input.asOptionalInput<bool>(adminPrivacy),
       autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
       billingContact =
           pulumi.Input.asOptionalInput<RegisteredDomainBillingContact>(
             billingContact,
           ),
       billingPrivacy = pulumi.Input.asOptionalInput<bool>(billingPrivacy),
       domainName = pulumi.Input.asInput<String>(domainName),
       nameServers =
           pulumi.Input.asOptionalInput<List<RegisteredDomainNameServer>>(
             nameServers,
           ),
       registrantContact =
           pulumi.Input.asOptionalInput<RegisteredDomainRegistrantContact>(
             registrantContact,
           ),
       registrantPrivacy = pulumi.Input.asOptionalInput<bool>(
         registrantPrivacy,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       techContact = pulumi.Input.asOptionalInput<RegisteredDomainTechContact>(
         techContact,
       ),
       techPrivacy = pulumi.Input.asOptionalInput<bool>(techPrivacy),
       transferLock = pulumi.Input.asOptionalInput<bool>(transferLock);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact':
          ?pulumi.Input.mapOptionalInputValue<
            RegisteredDomainAdminContact,
            Map<String, dynamic>
          >(adminContact, (value) => value.toMap()),
      'adminPrivacy': ?adminPrivacy,
      'autoRenew': ?autoRenew,
      'billingContact':
          ?pulumi.Input.mapOptionalInputValue<
            RegisteredDomainBillingContact,
            Map<String, dynamic>
          >(billingContact, (value) => value.toMap()),
      'billingPrivacy': ?billingPrivacy,
      'domainName': domainName,
      'nameServers':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegisteredDomainNameServer>,
            List<Map<String, dynamic>>
          >(
            nameServers,
            (value) =>
                pulumi.Input.encodeList<
                  RegisteredDomainNameServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'registrantContact':
          ?pulumi.Input.mapOptionalInputValue<
            RegisteredDomainRegistrantContact,
            Map<String, dynamic>
          >(registrantContact, (value) => value.toMap()),
      'registrantPrivacy': ?registrantPrivacy,
      'tags': ?tags,
      'techContact':
          ?pulumi.Input.mapOptionalInputValue<
            RegisteredDomainTechContact,
            Map<String, dynamic>
          >(techContact, (value) => value.toMap()),
      'techPrivacy': ?techPrivacy,
      'transferLock': ?transferLock,
    };
  }

  factory RegisteredDomainArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainArgs(
      adminContact: map['adminContact'] == null
          ? null
          : RegisteredDomainAdminContact.fromMap(
              (map['adminContact'] as Map).cast<String, dynamic>(),
            ),
      adminPrivacy: map['adminPrivacy'] == null
          ? null
          : map['adminPrivacy'] as bool,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      billingContact: map['billingContact'] == null
          ? null
          : RegisteredDomainBillingContact.fromMap(
              (map['billingContact'] as Map).cast<String, dynamic>(),
            ),
      billingPrivacy: map['billingPrivacy'] == null
          ? null
          : map['billingPrivacy'] as bool,
      domainName: map['domainName'] as String,
      nameServers: map['nameServers'] == null
          ? null
          : pulumi.Input.decodeList<RegisteredDomainNameServer>(
              map['nameServers'],
              (value) => RegisteredDomainNameServer.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      registrantContact: map['registrantContact'] == null
          ? null
          : RegisteredDomainRegistrantContact.fromMap(
              (map['registrantContact'] as Map).cast<String, dynamic>(),
            ),
      registrantPrivacy: map['registrantPrivacy'] == null
          ? null
          : map['registrantPrivacy'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      techContact: map['techContact'] == null
          ? null
          : RegisteredDomainTechContact.fromMap(
              (map['techContact'] as Map).cast<String, dynamic>(),
            ),
      techPrivacy: map['techPrivacy'] == null
          ? null
          : map['techPrivacy'] as bool,
      transferLock: map['transferLock'] == null
          ? null
          : map['transferLock'] as bool,
    );
  }
}
