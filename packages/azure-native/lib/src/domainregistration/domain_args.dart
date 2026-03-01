// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact.dart';
import 'dns_type.dart';
import 'domain_purchase_consent.dart';

/// {@template pulumi_domainregistration_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_domain_args_doc}
class DomainArgs {
  final pulumi.Input<String>? authCode;
  /// <code>true</code> if the domain should be automatically renewed; otherwise, <code>false</code>.
  final pulumi.Input<bool>? autoRenew;
  /// Legal agreement consent.
  final pulumi.Input<DomainPurchaseConsent> consent;
  /// Administrative contact.
  final pulumi.Input<Contact> contactAdmin;
  /// Billing contact.
  final pulumi.Input<Contact> contactBilling;
  /// Registrant contact.
  final pulumi.Input<Contact> contactRegistrant;
  /// Technical contact.
  final pulumi.Input<Contact> contactTech;
  /// Current DNS type
  final pulumi.Input<DnsType>? dnsType;
  /// Azure DNS Zone to use
  final pulumi.Input<String>? dnsZoneId;
  /// Name of the domain.
  final pulumi.Input<String>? domainName;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// <code>true</code> if domain privacy is enabled for this domain; otherwise, <code>false</code>.
  final pulumi.Input<bool>? privacy;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Target DNS type (would be used for migration)
  final pulumi.Input<DnsType>? targetDnsType;

  /// Creates a new [DomainArgs].
  /// [authCode] Optional.
  /// [autoRenew] <code>true</code> if the domain should be automatically renewed; otherwise, <code>false</code>.
  /// [consent] Legal agreement consent.
  /// [contactAdmin] Administrative contact.
  /// [contactBilling] Billing contact.
  /// [contactRegistrant] Registrant contact.
  /// [contactTech] Technical contact.
  /// [dnsType] Current DNS type
  /// [dnsZoneId] Azure DNS Zone to use
  /// [domainName] Name of the domain.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [privacy] <code>true</code> if domain privacy is enabled for this domain; otherwise, <code>false</code>.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tags] Resource tags.
  /// [targetDnsType] Target DNS type (would be used for migration)
  DomainArgs({
    String? authCode,
    bool? autoRenew,
    required DomainPurchaseConsent consent,
    required Contact contactAdmin,
    required Contact contactBilling,
    required Contact contactRegistrant,
    required Contact contactTech,
    DnsType? dnsType,
    String? dnsZoneId,
    String? domainName,
    String? kind,
    String? location,
    bool? privacy,
    required String resourceGroupName,
    Map<String, String>? tags,
    DnsType? targetDnsType,
  }) :
      authCode = pulumi.Input.asOptionalInput<String>(authCode),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      consent = pulumi.Input.asInput<DomainPurchaseConsent>(consent),
      contactAdmin = pulumi.Input.asInput<Contact>(contactAdmin),
      contactBilling = pulumi.Input.asInput<Contact>(contactBilling),
      contactRegistrant = pulumi.Input.asInput<Contact>(contactRegistrant),
      contactTech = pulumi.Input.asInput<Contact>(contactTech),
      dnsType = pulumi.Input.asOptionalInput<DnsType>(dnsType),
      dnsZoneId = pulumi.Input.asOptionalInput<String>(dnsZoneId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      privacy = pulumi.Input.asOptionalInput<bool>(privacy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetDnsType = pulumi.Input.asOptionalInput<DnsType>(targetDnsType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'autoRenew': ?autoRenew,
      'consent': pulumi.Input.mapInputValue<DomainPurchaseConsent, Map<String, dynamic>>(consent, (value) => value.toMap()),
      'contactAdmin': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(contactAdmin, (value) => value.toMap()),
      'contactBilling': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(contactBilling, (value) => value.toMap()),
      'contactRegistrant': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(contactRegistrant, (value) => value.toMap()),
      'contactTech': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(contactTech, (value) => value.toMap()),
      'dnsType': ?pulumi.Input.mapOptionalInputValue<DnsType, String>(dnsType, (value) => value.value),
      'dnsZoneId': ?dnsZoneId,
      'domainName': ?domainName,
      'kind': ?kind,
      'location': ?location,
      'privacy': ?privacy,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetDnsType': ?pulumi.Input.mapOptionalInputValue<DnsType, String>(targetDnsType, (value) => value.value),
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      consent: DomainPurchaseConsent.fromMap((map['consent'] as Map).cast<String, dynamic>()),
      contactAdmin: Contact.fromMap((map['contactAdmin'] as Map).cast<String, dynamic>()),
      contactBilling: Contact.fromMap((map['contactBilling'] as Map).cast<String, dynamic>()),
      contactRegistrant: Contact.fromMap((map['contactRegistrant'] as Map).cast<String, dynamic>()),
      contactTech: Contact.fromMap((map['contactTech'] as Map).cast<String, dynamic>()),
      dnsType: map['dnsType'] == null ? null : DnsType.fromValue(map['dnsType'] as String),
      dnsZoneId: map['dnsZoneId'] == null ? null : map['dnsZoneId'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      privacy: map['privacy'] == null ? null : map['privacy'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetDnsType: map['targetDnsType'] == null ? null : DnsType.fromValue(map['targetDnsType'] as String),
    );
  }
}

