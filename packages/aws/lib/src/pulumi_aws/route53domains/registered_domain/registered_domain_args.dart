// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../registered_domain_admin_contact/registered_domain_admin_contact.dart';
import '../registered_domain_billing_contact/registered_domain_billing_contact.dart';
import '../registered_domain_name_server/registered_domain_name_server.dart';
import '../registered_domain_registrant_contact/registered_domain_registrant_contact.dart';
import '../registered_domain_tech_contact/registered_domain_tech_contact.dart';

/// The set of arguments for RegisteredDomain.
class RegisteredDomainArgs {
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  final Input<RegisteredDomainAdminContact>? adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  final Input<RegisteredDomainBillingContact>? billingContact;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? billingPrivacy;

  /// The name of the registered domain.
  final Input<String> domainName;

  /// The list of nameservers for the domain. See <span pulumi-lang-nodejs="`nameServer`" pulumi-lang-dotnet="`NameServer`" pulumi-lang-go="`nameServer`" pulumi-lang-python="`name_server`" pulumi-lang-yaml="`nameServer`" pulumi-lang-java="`nameServer`">`name_server`</span> Blocks for more details.
  final Input<List<RegisteredDomainNameServer>>? nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  final Input<RegisteredDomainRegistrantContact>? registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? registrantPrivacy;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  final Input<RegisteredDomainTechContact>? techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? techPrivacy;

  /// Whether the domain is locked for transfer. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// > **NOTE:** You must specify the same privacy setting for <span pulumi-lang-nodejs="`adminPrivacy`" pulumi-lang-dotnet="`AdminPrivacy`" pulumi-lang-go="`adminPrivacy`" pulumi-lang-python="`admin_privacy`" pulumi-lang-yaml="`adminPrivacy`" pulumi-lang-java="`adminPrivacy`">`admin_privacy`</span>, <span pulumi-lang-nodejs="`registrantPrivacy`" pulumi-lang-dotnet="`RegistrantPrivacy`" pulumi-lang-go="`registrantPrivacy`" pulumi-lang-python="`registrant_privacy`" pulumi-lang-yaml="`registrantPrivacy`" pulumi-lang-java="`registrantPrivacy`">`registrant_privacy`</span> and <span pulumi-lang-nodejs="`techPrivacy`" pulumi-lang-dotnet="`TechPrivacy`" pulumi-lang-go="`techPrivacy`" pulumi-lang-python="`tech_privacy`" pulumi-lang-yaml="`techPrivacy`" pulumi-lang-java="`techPrivacy`">`tech_privacy`</span>.
  final Input<bool>? transferLock;

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
      map['adminContact'] = Input.mapOptionalInputValue<
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
      map['billingContact'] = Input.mapOptionalInputValue<
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
      map['nameServers'] = Input.mapOptionalInputValue<
              List<RegisteredDomainNameServer>, List<Map<String, dynamic>>>(
          nameServersValue,
          (value) => Input.encodeList<RegisteredDomainNameServer,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final registrantContactValue = registrantContact;
    if (registrantContactValue != null) {
      map['registrantContact'] = Input.mapOptionalInputValue<
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
      map['techContact'] = Input.mapOptionalInputValue<
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
      adminContact: Input.asOptionalInput<RegisteredDomainAdminContact>(
          map['adminContact']),
      adminPrivacy: Input.asOptionalInput<bool>(map['adminPrivacy']),
      autoRenew: Input.asOptionalInput<bool>(map['autoRenew']),
      billingContact: Input.asOptionalInput<RegisteredDomainBillingContact>(
          map['billingContact']),
      billingPrivacy: Input.asOptionalInput<bool>(map['billingPrivacy']),
      domainName: Input.asInput<String>(map['domainName']),
      nameServers: Input.asOptionalInput<List<RegisteredDomainNameServer>>(
          map['nameServers']),
      registrantContact:
          Input.asOptionalInput<RegisteredDomainRegistrantContact>(
              map['registrantContact']),
      registrantPrivacy: Input.asOptionalInput<bool>(map['registrantPrivacy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      techContact: Input.asOptionalInput<RegisteredDomainTechContact>(
          map['techContact']),
      techPrivacy: Input.asOptionalInput<bool>(map['techPrivacy']),
      transferLock: Input.asOptionalInput<bool>(map['transferLock']),
    );
  }
}
