// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_item_response.dart';
import 'price_guarantee_properties_response.dart';

/// Discount type properties including product family name
class DiscountProductFamilyResponse {
  /// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  final pulumi.Input<String> applyDiscountOn;
  /// Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  final pulumi.Input<List<ConditionsItemResponse>>? conditions;
  /// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  final pulumi.Input<String>? discountCombinationRule;
  /// Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  final pulumi.Input<double>? discountPercentage;
  /// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// Expected value is 'ProductFamily'.
  final pulumi.Input<String> discountType;
  /// Set only in price guarantee scenario.
  final pulumi.Input<PriceGuaranteePropertiesResponse>? priceGuaranteeProperties;
  /// Product family for which the discount is given. Validation: Optional
  final pulumi.Input<String>? productFamilyName;

  /// Creates a new [DiscountProductFamilyResponse].
  /// [applyDiscountOn] The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  /// [conditions] Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  /// [discountCombinationRule] The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  /// [discountPercentage] Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  /// [discountType] Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// [priceGuaranteeProperties] Set only in price guarantee scenario.
  /// [productFamilyName] Product family for which the discount is given. Validation: Optional
  DiscountProductFamilyResponse({
    required this.applyDiscountOn,
    this.conditions,
    this.discountCombinationRule,
    this.discountPercentage,
    required this.discountType,
    this.priceGuaranteeProperties,
    this.productFamilyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyDiscountOn': applyDiscountOn,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionsItemResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discountCombinationRule': ?discountCombinationRule,
      'discountPercentage': ?discountPercentage,
      'discountType': discountType,
      'priceGuaranteeProperties': ?pulumi.Input.mapOptionalInputValue<PriceGuaranteePropertiesResponse, Map<String, dynamic>>(priceGuaranteeProperties, (value) => value.toMap()),
      'productFamilyName': ?productFamilyName,
    };
  }

  factory DiscountProductFamilyResponse.fromMap(Map<String, dynamic> map) {
    return DiscountProductFamilyResponse(
      applyDiscountOn: (map['applyDiscountOn'] as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionsItemResponse>(map['conditions']!, (value) => ConditionsItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discountCombinationRule: map['discountCombinationRule'] == null ? null : (map['discountCombinationRule']! as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage']! as double).input(),
      discountType: (map['discountType'] as String).input(),
      priceGuaranteeProperties: map['priceGuaranteeProperties'] == null ? null : (PriceGuaranteePropertiesResponse.fromMap((map['priceGuaranteeProperties']! as Map).cast<String, dynamic>())).input(),
      productFamilyName: map['productFamilyName'] == null ? null : (map['productFamilyName']! as String).input(),
    );
  }
}

