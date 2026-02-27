// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_admin_contact/domain_admin_contact.dart';
import '../domain_billing_contact/domain_billing_contact.dart';
import '../domain_name_server/domain_name_server.dart';
import '../domain_registrant_contact/domain_registrant_contact.dart';
import '../domain_tech_contact/domain_tech_contact.dart';
import '../domain_timeouts/domain_timeouts_route53domains.dart';

/// The set of arguments for Domain.
class DomainRoute53domainsArgs {
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
  final pulumi.Input<DomainTimeoutsRoute53domains>? timeouts;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final pulumi.Input<bool>? transferLock;

  DomainRoute53domainsArgs({
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
    final map = <String, dynamic>{};
    map['adminContact'] =
        pulumi.Input.mapInputValue<DomainAdminContact, Map<String, dynamic>>(
            adminContact, (value) => value.toMap());
    final adminPrivacyValue = adminPrivacy;
    if (adminPrivacyValue != null) {
      map['adminPrivacy'] = adminPrivacyValue;
    }
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final billingContactsValue = billingContacts;
    if (billingContactsValue != null) {
      map['billingContacts'] = pulumi.Input.mapOptionalInputValue<
              List<DomainBillingContact>, List<Map<String, dynamic>>>(
          billingContactsValue,
          (value) => pulumi.Input.encodeList<DomainBillingContact,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final billingPrivacyValue = billingPrivacy;
    if (billingPrivacyValue != null) {
      map['billingPrivacy'] = billingPrivacyValue;
    }
    map['domainName'] = domainName;
    final durationInYearsValue = durationInYears;
    if (durationInYearsValue != null) {
      map['durationInYears'] = durationInYearsValue;
    }
    final nameServersValue = nameServers;
    if (nameServersValue != null) {
      map['nameServers'] = pulumi.Input.mapOptionalInputValue<
              List<DomainNameServer>, List<Map<String, dynamic>>>(
          nameServersValue,
          (value) =>
              pulumi.Input.encodeList<DomainNameServer, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['registrantContact'] = pulumi.Input.mapInputValue<
        DomainRegistrantContact,
        Map<String, dynamic>>(registrantContact, (value) => value.toMap());
    final registrantPrivacyValue = registrantPrivacy;
    if (registrantPrivacyValue != null) {
      map['registrantPrivacy'] = registrantPrivacyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['techContact'] =
        pulumi.Input.mapInputValue<DomainTechContact, Map<String, dynamic>>(
            techContact, (value) => value.toMap());
    final techPrivacyValue = techPrivacy;
    if (techPrivacyValue != null) {
      map['techPrivacy'] = techPrivacyValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DomainTimeoutsRoute53domains,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final transferLockValue = transferLock;
    if (transferLockValue != null) {
      map['transferLock'] = transferLockValue;
    }
    return map;
  }

  factory DomainRoute53domainsArgs.fromMap(Map<String, dynamic> map) {
    return DomainRoute53domainsArgs(
      adminContact:
          pulumi.Input.asInput<DomainAdminContact>(map['adminContact']),
      adminPrivacy: pulumi.Input.asOptionalInput<bool>(map['adminPrivacy']),
      autoRenew: pulumi.Input.asOptionalInput<bool>(map['autoRenew']),
      billingContacts: pulumi.Input.asOptionalInput<List<DomainBillingContact>>(
          map['billingContacts']),
      billingPrivacy: pulumi.Input.asOptionalInput<bool>(map['billingPrivacy']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      durationInYears:
          pulumi.Input.asOptionalInput<int>(map['durationInYears']),
      nameServers: pulumi.Input.asOptionalInput<List<DomainNameServer>>(
          map['nameServers']),
      registrantContact: pulumi.Input.asInput<DomainRegistrantContact>(
          map['registrantContact']),
      registrantPrivacy:
          pulumi.Input.asOptionalInput<bool>(map['registrantPrivacy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      techContact: pulumi.Input.asInput<DomainTechContact>(map['techContact']),
      techPrivacy: pulumi.Input.asOptionalInput<bool>(map['techPrivacy']),
      timeouts: pulumi.Input.asOptionalInput<DomainTimeoutsRoute53domains>(
          map['timeouts']),
      transferLock: pulumi.Input.asOptionalInput<bool>(map['transferLock']),
    );
  }
}
