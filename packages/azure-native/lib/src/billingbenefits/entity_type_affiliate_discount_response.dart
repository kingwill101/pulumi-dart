// ignore_for_file: unused_element, unnecessary_cast


/// Entity type for affiliate discounts
class EntityTypeAffiliateDiscountResponse {
  /// List of applied scopes supported for discounts.
  final String? appliedScopeType;
  /// Fully-qualified identifier of the benefit under applicable benefit list.
  final String benefitResourceId;
  /// Billing account resource id where the discount metadata is present.
  final String billingAccountResourceId;
  /// Billing profile resource id where the discount is scoped to.
  final String billingProfileResourceId;
  /// Customer resource id where the discount is scoped to.
  final String customerResourceId;
  /// This defines a user friendly display name for the discount.
  final String? displayName;
  /// End date of the discount. No duration will be supported. Allowed value is any date greater than or equal to startDate.
  final String endAt;
  /// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
  /// Expected value is 'Affiliate'.
  final String entityType;
  /// This will be present in the response if the primary has a resource ID
  final String primaryResourceId;
  /// This is the catalog UPN for the product.
  final String productCode;
  /// The state of the resource. Supported values are Pending, Failed, Succeeded, Canceled.
  final String provisioningState;
  /// Start date of the discount. Value is the date the discount started or will start in the future.
  final String startAt;
  /// Represents the current status of the discount.
  final String status;
  /// This is the globally unique identifier of the Discount which will not change for the lifetime of the Discount.
  final String? systemId;

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
  EntityTypeAffiliateDiscountResponse({
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
      appliedScopeType: map['appliedScopeType'] == null ? null : map['appliedScopeType'] as String,
      benefitResourceId: map['benefitResourceId'] as String,
      billingAccountResourceId: map['billingAccountResourceId'] as String,
      billingProfileResourceId: map['billingProfileResourceId'] as String,
      customerResourceId: map['customerResourceId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      endAt: map['endAt'] as String,
      entityType: map['entityType'] as String,
      primaryResourceId: map['primaryResourceId'] as String,
      productCode: map['productCode'] as String,
      provisioningState: map['provisioningState'] as String,
      startAt: map['startAt'] as String,
      status: map['status'] as String,
      systemId: map['systemId'] == null ? null : map['systemId'] as String,
    );
  }
}

