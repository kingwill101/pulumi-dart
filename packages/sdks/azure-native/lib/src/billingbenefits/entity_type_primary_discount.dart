// ignore_for_file: unused_element, unnecessary_cast

import 'discount_custom_price.dart';

/// Entity type for primary discounts
class EntityTypePrimaryDiscount {
  /// List of applied scopes supported for discounts.
  final String? appliedScopeType;
  /// This defines the conditions for a given discount type.
  final DiscountCustomPrice? discountTypeProperties;
  /// This defines a user friendly display name for the discount.
  final String? displayName;
  /// End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  final String endAt;
  /// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// Expected value is 'Primary'.
  final String entityType;
  /// This is the catalog UPN for the product.
  final String productCode;
  /// Start date of the discount. Value is the date the discount started or will start in the future.
  final String startAt;
  /// This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  final String? systemId;

  /// Creates a new [EntityTypePrimaryDiscount].
  /// [appliedScopeType] List of applied scopes supported for discounts.
  /// [discountTypeProperties] This defines the conditions for a given discount type.
  /// [displayName] This defines a user friendly display name for the discount.
  /// [endAt] End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  /// [entityType] This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// [productCode] This is the catalog UPN for the product.
  /// [startAt] Start date of the discount. Value is the date the discount started or will start in the future.
  /// [systemId] This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  EntityTypePrimaryDiscount({
    this.appliedScopeType,
    this.discountTypeProperties,
    this.displayName,
    required this.endAt,
    required this.entityType,
    required this.productCode,
    required this.startAt,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedScopeType': ?appliedScopeType,
      'discountTypeProperties': ?discountTypeProperties == null ? null : discountTypeProperties!.toMap(),
      'displayName': ?displayName,
      'endAt': endAt,
      'entityType': entityType,
      'productCode': productCode,
      'startAt': startAt,
      'systemId': ?systemId,
    };
  }

  factory EntityTypePrimaryDiscount.fromMap(Map<String, dynamic> map) {
    return EntityTypePrimaryDiscount(
      appliedScopeType: map['appliedScopeType'] == null ? null : map['appliedScopeType'] as String,
      discountTypeProperties: map['discountTypeProperties'] == null ? null : DiscountCustomPrice.fromMap((map['discountTypeProperties'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      endAt: map['endAt'] as String,
      entityType: map['entityType'] as String,
      productCode: map['productCode'] as String,
      startAt: map['startAt'] as String,
      systemId: map['systemId'] == null ? null : map['systemId'] as String,
    );
  }
}

