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
  AdditionalCustomerProperties({
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
      customerAsn: map['customerAsn'] == null ? null : (map['customerAsn']! as String).input(),
      customerEmail: map['customerEmail'] == null ? null : (map['customerEmail']! as String).input(),
      customerEntitlementExpiration: map['customerEntitlementExpiration'] == null ? null : (map['customerEntitlementExpiration']! as String).input(),
      customerEntitlementSkuGuid: map['customerEntitlementSkuGuid'] == null ? null : (map['customerEntitlementSkuGuid']! as String).input(),
      customerEntitlementSkuId: map['customerEntitlementSkuId'] == null ? null : (map['customerEntitlementSkuId']! as String).input(),
      customerEntitlementSkuName: map['customerEntitlementSkuName'] == null ? null : (map['customerEntitlementSkuName']! as String).input(),
      customerTransitAsn: map['customerTransitAsn'] == null ? null : (map['customerTransitAsn']! as String).input(),
      customerTransitState: map['customerTransitState'] == null ? null : (map['customerTransitState']! as String).input(),
      optionalProperty1: map['optionalProperty1'] == null ? null : (map['optionalProperty1']! as String).input(),
      optionalProperty2: map['optionalProperty2'] == null ? null : (map['optionalProperty2']! as String).input(),
      optionalProperty3: map['optionalProperty3'] == null ? null : (map['optionalProperty3']! as String).input(),
      optionalProperty4: map['optionalProperty4'] == null ? null : (map['optionalProperty4']! as String).input(),
      optionalProperty5: map['optionalProperty5'] == null ? null : (map['optionalProperty5']! as String).input(),
    );
  }
}

