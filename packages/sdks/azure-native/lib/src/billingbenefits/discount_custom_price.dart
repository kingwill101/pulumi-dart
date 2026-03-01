// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_item.dart';
import 'custom_price_properties.dart';
import 'price_guarantee_properties.dart';

/// Discount type properties including product family name, product id, sku, and custom price properties. Allows a single entry in marketSetPrices.
class DiscountCustomPrice {
  /// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  final String applyDiscountOn;
  /// Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  final List<ConditionsItem>? conditions;
  /// Custom price properties for a given discount.
  final CustomPriceProperties? customPriceProperties;
  /// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  final String? discountCombinationRule;
  /// Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  final double? discountPercentage;
  /// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// Expected value is 'CustomPrice'.
  final String discountType;
  /// Set only in price guarantee scenario.
  final PriceGuaranteeProperties? priceGuaranteeProperties;
  /// Product family for which the discount is given. Validation: Optional
  final String? productFamilyName;
  /// Product ID for which the discount is given. Validation: Optional. No specific format, example: DZH318Z09V6F
  final String? productId;
  /// ResourceSku for the given discount. Validation: Optional.
  final String? skuId;

  /// Creates a new [DiscountCustomPrice].
  /// [applyDiscountOn] The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  /// [conditions] Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  /// [customPriceProperties] Custom price properties for a given discount.
  /// [discountCombinationRule] The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  /// [discountPercentage] Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  /// [discountType] Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// [priceGuaranteeProperties] Set only in price guarantee scenario.
  /// [productFamilyName] Product family for which the discount is given. Validation: Optional
  /// [productId] Product ID for which the discount is given. Validation: Optional. No specific format, example: DZH318Z09V6F
  /// [skuId] ResourceSku for the given discount. Validation: Optional.
  DiscountCustomPrice({
    required this.applyDiscountOn,
    this.conditions,
    this.customPriceProperties,
    this.discountCombinationRule,
    this.discountPercentage,
    required this.discountType,
    this.priceGuaranteeProperties,
    this.productFamilyName,
    this.productId,
    this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyDiscountOn': applyDiscountOn,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionsItem, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'customPriceProperties': ?customPriceProperties == null ? null : customPriceProperties!.toMap(),
      'discountCombinationRule': ?discountCombinationRule,
      'discountPercentage': ?discountPercentage,
      'discountType': discountType,
      'priceGuaranteeProperties': ?priceGuaranteeProperties == null ? null : priceGuaranteeProperties!.toMap(),
      'productFamilyName': ?productFamilyName,
      'productId': ?productId,
      'skuId': ?skuId,
    };
  }

  factory DiscountCustomPrice.fromMap(Map<String, dynamic> map) {
    return DiscountCustomPrice(
      applyDiscountOn: map['applyDiscountOn'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionsItem>(map['conditions'], (value) => ConditionsItem.fromMap((value as Map).cast<String, dynamic>())),
      customPriceProperties: map['customPriceProperties'] == null ? null : CustomPriceProperties.fromMap((map['customPriceProperties'] as Map).cast<String, dynamic>()),
      discountCombinationRule: map['discountCombinationRule'] == null ? null : map['discountCombinationRule'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      discountType: map['discountType'] as String,
      priceGuaranteeProperties: map['priceGuaranteeProperties'] == null ? null : PriceGuaranteeProperties.fromMap((map['priceGuaranteeProperties'] as Map).cast<String, dynamic>()),
      productFamilyName: map['productFamilyName'] == null ? null : map['productFamilyName'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
    );
  }
}

