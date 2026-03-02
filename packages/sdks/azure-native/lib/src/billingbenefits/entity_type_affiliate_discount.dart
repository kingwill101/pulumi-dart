// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity type for affiliate discounts
class EntityTypeAffiliateDiscount {
  /// List of applied scopes supported for discounts.
  final pulumi.Input<String>? appliedScopeType;
  /// This defines a user friendly display name for the discount.
  final pulumi.Input<String>? displayName;
  /// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// Expected value is 'Affiliate'.
  final pulumi.Input<String> entityType;
  /// This is the catalog UPN for the product.
  final pulumi.Input<String> productCode;
  /// Start date of the discount. Value is the date the discount started or will start in the future.
  final pulumi.Input<String> startAt;
  /// This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  final pulumi.Input<String>? systemId;

  /// Creates a new [EntityTypeAffiliateDiscount].
  /// [appliedScopeType] List of applied scopes supported for discounts.
  /// [displayName] This defines a user friendly display name for the discount.
  /// [entityType] This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// [productCode] This is the catalog UPN for the product.
  /// [startAt] Start date of the discount. Value is the date the discount started or will start in the future.
  /// [systemId] This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  EntityTypeAffiliateDiscount({
    this.appliedScopeType,
    this.displayName,
    required this.entityType,
    required this.productCode,
    required this.startAt,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedScopeType': ?appliedScopeType,
      'displayName': ?displayName,
      'entityType': entityType,
      'productCode': productCode,
      'startAt': startAt,
      'systemId': ?systemId,
    };
  }

  factory EntityTypeAffiliateDiscount.fromMap(Map<String, dynamic> map) {
    return EntityTypeAffiliateDiscount(
      appliedScopeType: map['appliedScopeType'] == null ? null : (map['appliedScopeType']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entityType: (map['entityType'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      startAt: (map['startAt'] as String).input(),
      systemId: map['systemId'] == null ? null : (map['systemId']! as String).input(),
    );
  }
}

