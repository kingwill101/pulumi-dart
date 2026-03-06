// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity type for affiliate discounts
class EntityTypeAffiliateDiscountResponse {
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
  /// This defines a user friendly display name for the discount.
  final pulumi.Input<String>? displayName;
  /// End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  final pulumi.Input<String> endAt;
  /// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// Expected value is 'Affiliate'.
  final pulumi.Input<String> entityType;
  /// This will be present in the response if the primary has a resource ID
  final pulumi.Input<String> primaryResourceId;
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

  /// Creates a new [EntityTypeAffiliateDiscountResponse].
  /// [appliedScopeType] List of applied scopes supported for discounts.
  /// [benefitResourceId] Fully-qualified identifier of the benefit under applicable benefit list.
  /// [billingAccountResourceId] Billing account resource id where the discount metadata is present.
  /// [billingProfileResourceId] Billing profile resource id where the discount is scoped to.
  /// [customerResourceId] Customer resource id where the discount is scoped to.
  /// [displayName] This defines a user friendly display name for the discount.
  /// [endAt] End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  /// [entityType] This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// [primaryResourceId] This will be present in the response if the primary has a resource ID
  /// [productCode] This is the catalog UPN for the product.
  /// [provisioningState] The state of the resource. Supported values are Pending, Failed, Succeeded, Canceled.
  /// [startAt] Start date of the discount. Value is the date the discount started or will start in the future.
  /// [status] Represents the current status of the discount.
  /// [systemId] This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  const EntityTypeAffiliateDiscountResponse({
    this.appliedScopeType,
    required this.benefitResourceId,
    required this.billingAccountResourceId,
    required this.billingProfileResourceId,
    required this.customerResourceId,
    this.displayName,
    required this.endAt,
    required this.entityType,
    required this.primaryResourceId,
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
      'displayName': ?displayName,
      'endAt': endAt,
      'entityType': entityType,
      'primaryResourceId': primaryResourceId,
      'productCode': productCode,
      'provisioningState': provisioningState,
      'startAt': startAt,
      'status': status,
      'systemId': ?systemId,
    };
  }

  factory EntityTypeAffiliateDiscountResponse.fromMap(Map<String, dynamic> map) {
    return EntityTypeAffiliateDiscountResponse(
      appliedScopeType: (() { final guardedValue = map['appliedScopeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      benefitResourceId: pulumi.Input.fromValue(map['benefitResourceId'] as String),
      billingAccountResourceId: pulumi.Input.fromValue(map['billingAccountResourceId'] as String),
      billingProfileResourceId: pulumi.Input.fromValue(map['billingProfileResourceId'] as String),
      customerResourceId: pulumi.Input.fromValue(map['customerResourceId'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: pulumi.Input.fromValue(map['endAt'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      primaryResourceId: pulumi.Input.fromValue(map['primaryResourceId'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      startAt: pulumi.Input.fromValue(map['startAt'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

