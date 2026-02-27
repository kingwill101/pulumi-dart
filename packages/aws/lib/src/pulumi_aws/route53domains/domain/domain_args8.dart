// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_admin_contact/domain_admin_contact.dart';
import '../domain_billing_contact/domain_billing_contact.dart';
import '../domain_name_server/domain_name_server.dart';
import '../domain_registrant_contact/domain_registrant_contact.dart';
import '../domain_tech_contact/domain_tech_contact.dart';
import '../domain_timeouts/domain_timeouts2.dart';

/// The set of arguments for Domain.
class DomainArgs8 {
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final Input<DomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  final Input<bool>? adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: `true`.
  final Input<bool>? autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  final Input<List<DomainBillingContact>>? billingContacts;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  final Input<bool>? billingPrivacy;

  /// The name of the domain.
  final Input<String> domainName;

  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  final Input<int>? durationInYears;

  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  final Input<List<DomainNameServer>>? nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  final Input<DomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  final Input<bool>? registrantPrivacy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  final Input<DomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  final Input<bool>? techPrivacy;
  final Input<DomainTimeouts2>? timeouts;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  final Input<bool>? transferLock;

  DomainArgs8({
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
        Input.mapInputValue<DomainAdminContact, Map<String, dynamic>>(
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
      map['billingContacts'] = Input.mapOptionalInputValue<
              List<DomainBillingContact>, List<Map<String, dynamic>>>(
          billingContactsValue,
          (value) =>
              Input.encodeList<DomainBillingContact, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['nameServers'] = Input.mapOptionalInputValue<List<DomainNameServer>,
              List<Map<String, dynamic>>>(
          nameServersValue,
          (value) => Input.encodeList<DomainNameServer, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['registrantContact'] =
        Input.mapInputValue<DomainRegistrantContact, Map<String, dynamic>>(
            registrantContact, (value) => value.toMap());
    final registrantPrivacyValue = registrantPrivacy;
    if (registrantPrivacyValue != null) {
      map['registrantPrivacy'] = registrantPrivacyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['techContact'] =
        Input.mapInputValue<DomainTechContact, Map<String, dynamic>>(
            techContact, (value) => value.toMap());
    final techPrivacyValue = techPrivacy;
    if (techPrivacyValue != null) {
      map['techPrivacy'] = techPrivacyValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<DomainTimeouts2, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final transferLockValue = transferLock;
    if (transferLockValue != null) {
      map['transferLock'] = transferLockValue;
    }
    return map;
  }

  factory DomainArgs8.fromMap(Map<String, dynamic> map) {
    return DomainArgs8(
      adminContact: Input.asInput<DomainAdminContact>(map['adminContact']),
      adminPrivacy: Input.asOptionalInput<bool>(map['adminPrivacy']),
      autoRenew: Input.asOptionalInput<bool>(map['autoRenew']),
      billingContacts: Input.asOptionalInput<List<DomainBillingContact>>(
          map['billingContacts']),
      billingPrivacy: Input.asOptionalInput<bool>(map['billingPrivacy']),
      domainName: Input.asInput<String>(map['domainName']),
      durationInYears: Input.asOptionalInput<int>(map['durationInYears']),
      nameServers:
          Input.asOptionalInput<List<DomainNameServer>>(map['nameServers']),
      registrantContact:
          Input.asInput<DomainRegistrantContact>(map['registrantContact']),
      registrantPrivacy: Input.asOptionalInput<bool>(map['registrantPrivacy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      techContact: Input.asInput<DomainTechContact>(map['techContact']),
      techPrivacy: Input.asOptionalInput<bool>(map['techPrivacy']),
      timeouts: Input.asOptionalInput<DomainTimeouts2>(map['timeouts']),
      transferLock: Input.asOptionalInput<bool>(map['transferLock']),
    );
  }
}
