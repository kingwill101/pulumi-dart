// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing customer for connected cache resource
class AdditionalCustomerProperties {
  /// Customer resource Asn (autonomous system number).
  final pulumi.Input<String>? customerAsn;
  /// Customer resource contact email.
  final pulumi.Input<String>? customerEmail;
  /// Customer resource entitlement expiration date string.
  final pulumi.Input<String>? customerEntitlementExpiration;
  /// Customer resource entitlement Sku Guid.
  final pulumi.Input<String>? customerEntitlementSkuGuid;
  /// Customer resource entitlement Sku Id.
  final pulumi.Input<String>? customerEntitlementSkuId;
  /// Customer resource entitlement Sku name.
  final pulumi.Input<String>? customerEntitlementSkuName;
  /// Customer resource transit Asn (autonomous system number).
  final pulumi.Input<String>? customerTransitAsn;
  /// Customer resource transit state.
  final pulumi.Input<String>? customerTransitState;
  /// Optional property #1 of Mcc response object.
  final pulumi.Input<String>? optionalProperty1;
  /// Optional property #2 of Mcc response object.
  final pulumi.Input<String>? optionalProperty2;
  /// Optional property #3 of Mcc response object.
  final pulumi.Input<String>? optionalProperty3;
  /// Optional property #4 of Mcc response object.
  final pulumi.Input<String>? optionalProperty4;
  /// Optional property #5 of Mcc response object.
  final pulumi.Input<String>? optionalProperty5;

  /// Creates a new [AdditionalCustomerProperties].
  /// [customerAsn] Customer resource Asn (autonomous system number).
  /// [customerEmail] Customer resource contact email.
  /// [customerEntitlementExpiration] Customer resource entitlement expiration date string.
  /// [customerEntitlementSkuGuid] Customer resource entitlement Sku Guid.
  /// [customerEntitlementSkuId] Customer resource entitlement Sku Id.
  /// [customerEntitlementSkuName] Customer resource entitlement Sku name.
  /// [customerTransitAsn] Customer resource transit Asn (autonomous system number).
  /// [customerTransitState] Customer resource transit state.
  /// [optionalProperty1] Optional property #1 of Mcc response object.
  /// [optionalProperty2] Optional property #2 of Mcc response object.
  /// [optionalProperty3] Optional property #3 of Mcc response object.
  /// [optionalProperty4] Optional property #4 of Mcc response object.
  /// [optionalProperty5] Optional property #5 of Mcc response object.
  const AdditionalCustomerProperties({
    this.customerAsn,
    this.customerEmail,
    this.customerEntitlementExpiration,
    this.customerEntitlementSkuGuid,
    this.customerEntitlementSkuId,
    this.customerEntitlementSkuName,
    this.customerTransitAsn,
    this.customerTransitState,
    this.optionalProperty1,
    this.optionalProperty2,
    this.optionalProperty3,
    this.optionalProperty4,
    this.optionalProperty5,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerAsn': ?customerAsn,
      'customerEmail': ?customerEmail,
      'customerEntitlementExpiration': ?customerEntitlementExpiration,
      'customerEntitlementSkuGuid': ?customerEntitlementSkuGuid,
      'customerEntitlementSkuId': ?customerEntitlementSkuId,
      'customerEntitlementSkuName': ?customerEntitlementSkuName,
      'customerTransitAsn': ?customerTransitAsn,
      'customerTransitState': ?customerTransitState,
      'optionalProperty1': ?optionalProperty1,
      'optionalProperty2': ?optionalProperty2,
      'optionalProperty3': ?optionalProperty3,
      'optionalProperty4': ?optionalProperty4,
      'optionalProperty5': ?optionalProperty5,
    };
  }

  factory AdditionalCustomerProperties.fromMap(Map<String, dynamic> map) {
    return AdditionalCustomerProperties(
      customerAsn: (() { final guardedValue = map['customerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEmail: (() { final guardedValue = map['customerEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementExpiration: (() { final guardedValue = map['customerEntitlementExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuGuid: (() { final guardedValue = map['customerEntitlementSkuGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuId: (() { final guardedValue = map['customerEntitlementSkuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuName: (() { final guardedValue = map['customerEntitlementSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerTransitAsn: (() { final guardedValue = map['customerTransitAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerTransitState: (() { final guardedValue = map['customerTransitState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty1: (() { final guardedValue = map['optionalProperty1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty2: (() { final guardedValue = map['optionalProperty2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty3: (() { final guardedValue = map['optionalProperty3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty4: (() { final guardedValue = map['optionalProperty4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty5: (() { final guardedValue = map['optionalProperty5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
