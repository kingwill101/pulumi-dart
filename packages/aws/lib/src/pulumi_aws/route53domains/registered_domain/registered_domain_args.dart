// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../registered_domain_admin_contact/registered_domain_admin_contact.dart';
import '../registered_domain_billing_contact/registered_domain_billing_contact.dart';
import '../registered_domain_name_server/registered_domain_name_server.dart';
import '../registered_domain_registrant_contact/registered_domain_registrant_contact.dart';
import '../registered_domain_tech_contact/registered_domain_tech_contact.dart';

/// The set of arguments for RegisteredDomain.
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

  RegisteredDomainArgs({
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
    final map = <String, dynamic>{};
    final adminContactValue = adminContact;
    if (adminContactValue != null) {
      map['adminContact'] = pulumi.Input.mapOptionalInputValue<
          RegisteredDomainAdminContact,
          Map<String, dynamic>>(adminContactValue, (value) => value.toMap());
    }
    final adminPrivacyValue = adminPrivacy;
    if (adminPrivacyValue != null) {
      map['adminPrivacy'] = adminPrivacyValue;
    }
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final billingContactValue = billingContact;
    if (billingContactValue != null) {
      map['billingContact'] = pulumi.Input.mapOptionalInputValue<
          RegisteredDomainBillingContact,
          Map<String, dynamic>>(billingContactValue, (value) => value.toMap());
    }
    final billingPrivacyValue = billingPrivacy;
    if (billingPrivacyValue != null) {
      map['billingPrivacy'] = billingPrivacyValue;
    }
    map['domainName'] = domainName;
    final nameServersValue = nameServers;
    if (nameServersValue != null) {
      map['nameServers'] = pulumi.Input.mapOptionalInputValue<
              List<RegisteredDomainNameServer>, List<Map<String, dynamic>>>(
          nameServersValue,
          (value) => pulumi.Input.encodeList<RegisteredDomainNameServer,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final registrantContactValue = registrantContact;
    if (registrantContactValue != null) {
      map['registrantContact'] = pulumi.Input.mapOptionalInputValue<
              RegisteredDomainRegistrantContact, Map<String, dynamic>>(
          registrantContactValue, (value) => value.toMap());
    }
    final registrantPrivacyValue = registrantPrivacy;
    if (registrantPrivacyValue != null) {
      map['registrantPrivacy'] = registrantPrivacyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final techContactValue = techContact;
    if (techContactValue != null) {
      map['techContact'] = pulumi.Input.mapOptionalInputValue<
          RegisteredDomainTechContact,
          Map<String, dynamic>>(techContactValue, (value) => value.toMap());
    }
    final techPrivacyValue = techPrivacy;
    if (techPrivacyValue != null) {
      map['techPrivacy'] = techPrivacyValue;
    }
    final transferLockValue = transferLock;
    if (transferLockValue != null) {
      map['transferLock'] = transferLockValue;
    }
    return map;
  }

  factory RegisteredDomainArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainArgs(
      adminContact: pulumi.Input.asOptionalInput<RegisteredDomainAdminContact>(
          map['adminContact']),
      adminPrivacy: pulumi.Input.asOptionalInput<bool>(map['adminPrivacy']),
      autoRenew: pulumi.Input.asOptionalInput<bool>(map['autoRenew']),
      billingContact:
          pulumi.Input.asOptionalInput<RegisteredDomainBillingContact>(
              map['billingContact']),
      billingPrivacy: pulumi.Input.asOptionalInput<bool>(map['billingPrivacy']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      nameServers:
          pulumi.Input.asOptionalInput<List<RegisteredDomainNameServer>>(
              map['nameServers']),
      registrantContact:
          pulumi.Input.asOptionalInput<RegisteredDomainRegistrantContact>(
              map['registrantContact']),
      registrantPrivacy:
          pulumi.Input.asOptionalInput<bool>(map['registrantPrivacy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      techContact: pulumi.Input.asOptionalInput<RegisteredDomainTechContact>(
          map['techContact']),
      techPrivacy: pulumi.Input.asOptionalInput<bool>(map['techPrivacy']),
      transferLock: pulumi.Input.asOptionalInput<bool>(map['transferLock']),
    );
  }
}
