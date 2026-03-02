// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_item.dart';
import 'price_guarantee_properties.dart';

/// Discount type properties including product family name and product id.
class DiscountProduct {
  /// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  final pulumi.Input<String> applyDiscountOn;
  /// Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  final pulumi.Input<List<ConditionsItem>>? conditions;
  /// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  final pulumi.Input<String>? discountCombinationRule;
  /// Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  final pulumi.Input<double>? discountPercentage;
  /// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// Expected value is 'Product'.
  final pulumi.Input<String> discountType;
  /// Set only in price guarantee scenario.
  final pulumi.Input<PriceGuaranteeProperties>? priceGuaranteeProperties;
  /// Product family for which the discount is given. Validation: Optional
  final pulumi.Input<String>? productFamilyName;
  /// Product ID for which the discount is given. Validation: Optional. No specific format, example: DZH318Z09V6F
  final pulumi.Input<String>? productId;

  /// Creates a new [DiscountProduct].
  /// [applyDiscountOn] The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  /// [conditions] Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  /// [discountCombinationRule] The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  /// [discountPercentage] Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  /// [discountType] Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// [priceGuaranteeProperties] Set only in price guarantee scenario.
  /// [productFamilyName] Product family for which the discount is given. Validation: Optional
  /// [productId] Product ID for which the discount is given. Validation: Optional. No specific format, example: DZH318Z09V6F
  DiscountProduct({
    required this.applyDiscountOn,
    this.conditions,
    this.discountCombinationRule,
    this.discountPercentage,
    required this.discountType,
    this.priceGuaranteeProperties,
    this.productFamilyName,
    this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyDiscountOn': applyDiscountOn,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionsItem>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discountCombinationRule': ?discountCombinationRule,
      'discountPercentage': ?discountPercentage,
      'discountType': discountType,
      'priceGuaranteeProperties': ?pulumi.Input.mapOptionalInputValue<PriceGuaranteeProperties, Map<String, dynamic>>(priceGuaranteeProperties, (value) => value.toMap()),
      'productFamilyName': ?productFamilyName,
      'productId': ?productId,
    };
  }

  factory DiscountProduct.fromMap(Map<String, dynamic> map) {
    return DiscountProduct(
      applyDiscountOn: (map['applyDiscountOn'] as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionsItem>(map['conditions']!, (value) => ConditionsItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discountCombinationRule: map['discountCombinationRule'] == null ? null : (map['discountCombinationRule']! as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage']! as double).input(),
      discountType: (map['discountType'] as String).input(),
      priceGuaranteeProperties: map['priceGuaranteeProperties'] == null ? null : (PriceGuaranteeProperties.fromMap((map['priceGuaranteeProperties']! as Map).cast<String, dynamic>())).input(),
      productFamilyName: map['productFamilyName'] == null ? null : (map['productFamilyName']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
    );
  }
}

