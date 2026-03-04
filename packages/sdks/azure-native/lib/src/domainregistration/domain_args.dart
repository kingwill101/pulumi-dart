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

  /// &lt;code&gt;true&lt;/code&gt; if the domain should be automatically renewed; otherwise, &lt;code&gt;false&lt;/code&gt;.
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

  /// &lt;code&gt;true&lt;/code&gt; if domain privacy is enabled for this domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? privacy;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Target DNS type (would be used for migration)
  final pulumi.Input<DnsType>? targetDnsType;

  /// Creates a new [DomainArgs].
  /// [authCode] Optional.
  /// [autoRenew] &lt;code&gt;true&lt;/code&gt; if the domain should be automatically renewed; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
  /// [privacy] &lt;code&gt;true&lt;/code&gt; if domain privacy is enabled for this domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tags] Resource tags.
  /// [targetDnsType] Target DNS type (would be used for migration)
  DomainArgs({
    this.authCode,
    this.autoRenew,
    required this.consent,
    required this.contactAdmin,
    required this.contactBilling,
    required this.contactRegistrant,
    required this.contactTech,
    this.dnsType,
    this.dnsZoneId,
    this.domainName,
    this.kind,
    this.location,
    this.privacy,
    required this.resourceGroupName,
    this.tags,
    this.targetDnsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'autoRenew': ?autoRenew,
      'consent':
          pulumi.Input.mapInputValue<
            DomainPurchaseConsent,
            Map<String, dynamic>
          >(consent, (value) => value.toMap()),
      'contactAdmin': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(
        contactAdmin,
        (value) => value.toMap(),
      ),
      'contactBilling':
          pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(
            contactBilling,
            (value) => value.toMap(),
          ),
      'contactRegistrant':
          pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(
            contactRegistrant,
            (value) => value.toMap(),
          ),
      'contactTech': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(
        contactTech,
        (value) => value.toMap(),
      ),
      'dnsType': ?pulumi.Input.mapOptionalInputValue<DnsType, String>(
        dnsType,
        (value) => value.wireValue,
      ),
      'dnsZoneId': ?dnsZoneId,
      'domainName': ?domainName,
      'kind': ?kind,
      'location': ?location,
      'privacy': ?privacy,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetDnsType': ?pulumi.Input.mapOptionalInputValue<DnsType, String>(
        targetDnsType,
        (value) => value.wireValue,
      ),
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      authCode: (() {
        final guardedValue = map['authCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      consent: pulumi.Input.fromValue(
        DomainPurchaseConsent.fromMap(
          (map['consent']! as Map).cast<String, dynamic>(),
        ),
      ),
      contactAdmin: pulumi.Input.fromValue(
        Contact.fromMap((map['contactAdmin']! as Map).cast<String, dynamic>()),
      ),
      contactBilling: pulumi.Input.fromValue(
        Contact.fromMap(
          (map['contactBilling']! as Map).cast<String, dynamic>(),
        ),
      ),
      contactRegistrant: pulumi.Input.fromValue(
        Contact.fromMap(
          (map['contactRegistrant']! as Map).cast<String, dynamic>(),
        ),
      ),
      contactTech: pulumi.Input.fromValue(
        Contact.fromMap((map['contactTech']! as Map).cast<String, dynamic>()),
      ),
      dnsType: (() {
        final guardedValue = map['dnsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsType.fromValue(guardedValue as String),
        );
      })(),
      dnsZoneId: (() {
        final guardedValue = map['dnsZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privacy: (() {
        final guardedValue = map['privacy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetDnsType: (() {
        final guardedValue = map['targetDnsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
