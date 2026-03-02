// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discount_custom_price_response.dart';

/// Entity type for primary discounts
class EntityTypePrimaryDiscountResponse {
  /// List of applied scopes supported for discounts.
  final pulumi.Input<String>? appliedScopeType;
  /// Fully-qualified identifier of the benefit under applicable benefit list.
  final pulumi.Input<String> benefitResourceId;
  /// Billing account resource id where the discount metadata is present.
  final pulumi.Input<String> billingAccountResourceId;
  /// Billing profile resource id where the discount is scoped to.
  final pulumi.Input<String> billingProfileResourceId;
  /// Customer resource id where the discount is scoped to.
  final pulumi.Input<String> customerResourceId;
  /// This defines the conditions for a given discount type.
  final pulumi.Input<DiscountCustomPriceResponse>? discountTypeProperties;
  /// This defines a user friendly display name for the discount.
  final pulumi.Input<String>? displayName;
  /// End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  final pulumi.Input<String> endAt;
  /// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// Expected value is 'Primary'.
  final pulumi.Input<String> entityType;
  /// This is the catalog UPN for the product.
  final pulumi.Input<String> productCode;
  /// The state of the resource. Supported values are Pending, Failed, Succeeded, Canceled.
  final pulumi.Input<String> provisioningState;
  /// Start date of the discount. Value is the date the discount started or will start in the future.
  final pulumi.Input<String> startAt;
  /// Represents the current status of the discount.
  final pulumi.Input<String> status;
  /// This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  final pulumi.Input<String>? systemId;

  /// Creates a new [EntityTypePrimaryDiscountResponse].
  /// [appliedScopeType] List of applied scopes supported for discounts.
  /// [benefitResourceId] Fully-qualified identifier of the benefit under applicable benefit list.
  /// [billingAccountResourceId] Billing account resource id where the discount metadata is present.
  /// [billingProfileResourceId] Billing profile resource id where the discount is scoped to.
  /// [customerResourceId] Customer resource id where the discount is scoped to.
  /// [discountTypeProperties] This defines the conditions for a given discount type.
  /// [displayName] This defines a user friendly display name for the discount.
  /// [endAt] End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  /// [entityType] This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// [productCode] This is the catalog UPN for the product.
  /// [provisioningState] The state of the resource. Supported values are Pending, Failed, Succeeded, Canceled.
  /// [startAt] Start date of the discount. Value is the date the discount started or will start in the future.
  /// [status] Represents the current status of the discount.
  /// [systemId] This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  EntityTypePrimaryDiscountResponse({
    this.appliedScopeType,
    required this.benefitResourceId,
    required this.billingAccountResourceId,
    required this.billingProfileResourceId,
    required this.customerResourceId,
    this.discountTypeProperties,
    this.displayName,
    required this.endAt,
    required this.entityType,
    required this.productCode,
    required this.provisioningState,
    required this.startAt,
    required this.status,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedScopeType': ?appliedScopeType,
      'benefitResourceId': benefitResourceId,
      'billingAccountResourceId': billingAccountResourceId,
      'billingProfileResourceId': billingProfileResourceId,
      'customerResourceId': customerResourceId,
      'discountTypeProperties': ?pulumi.Input.mapOptionalInputValue<DiscountCustomPriceResponse, Map<String, dynamic>>(discountTypeProperties, (value) => value.toMap()),
      'displayName': ?displayName,
      'endAt': endAt,
      'entityType': entityType,
      'productCode': productCode,
      'provisioningState': provisioningState,
      'startAt': startAt,
      'status': status,
      'systemId': ?systemId,
    };
  }

  factory EntityTypePrimaryDiscountResponse.fromMap(Map<String, dynamic> map) {
    return EntityTypePrimaryDiscountResponse(
      appliedScopeType: map['appliedScopeType'] == null ? null : (map['appliedScopeType']! as String).input(),
      benefitResourceId: (map['benefitResourceId'] as String).input(),
      billingAccountResourceId: (map['billingAccountResourceId'] as String).input(),
      billingProfileResourceId: (map['billingProfileResourceId'] as String).input(),
      customerResourceId: (map['customerResourceId'] as String).input(),
      discountTypeProperties: map['discountTypeProperties'] == null ? null : (DiscountCustomPriceResponse.fromMap((map['discountTypeProperties']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endAt: (map['endAt'] as String).input(),
      entityType: (map['entityType'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      startAt: (map['startAt'] as String).input(),
      status: (map['status'] as String).input(),
      systemId: map['systemId'] == null ? null : (map['systemId']! as String).input(),
    );
  }
}

