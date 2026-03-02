// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_item_response.dart';
import 'custom_price_properties_response.dart';
import 'price_guarantee_properties_response.dart';

/// Discount type properties including product family name, product id, sku, and custom price properties. Allows a single entry in marketSetPrices.
class DiscountCustomPriceResponse {
  /// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  final pulumi.Input<String> applyDiscountOn;
  /// Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  final pulumi.Input<List<ConditionsItemResponse>>? conditions;
  /// Custom price properties for a given discount.
  final pulumi.Input<CustomPricePropertiesResponse>? customPriceProperties;
  /// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  final pulumi.Input<String>? discountCombinationRule;
  /// Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  final pulumi.Input<double>? discountPercentage;
  /// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// Expected value is 'CustomPrice'.
  final pulumi.Input<String> discountType;
  /// Set only in price guarantee scenario.
  final pulumi.Input<PriceGuaranteePropertiesResponse>? priceGuaranteeProperties;
  /// Product family for which the discount is given. Validation: Optional
  final pulumi.Input<String>? productFamilyName;
  /// Product ID for which the discount is given. Validation: Optional. No specific format, example: DZH318Z09V6F
  final pulumi.Input<String>? productId;
  /// ResourceSku for the given discount. Validation: Optional.
  final pulumi.Input<String>? skuId;

  /// Creates a new [DiscountCustomPriceResponse].
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
  DiscountCustomPriceResponse({
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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionsItemResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customPriceProperties': ?pulumi.Input.mapOptionalInputValue<CustomPricePropertiesResponse, Map<String, dynamic>>(customPriceProperties, (value) => value.toMap()),
      'discountCombinationRule': ?discountCombinationRule,
      'discountPercentage': ?discountPercentage,
      'discountType': discountType,
      'priceGuaranteeProperties': ?pulumi.Input.mapOptionalInputValue<PriceGuaranteePropertiesResponse, Map<String, dynamic>>(priceGuaranteeProperties, (value) => value.toMap()),
      'productFamilyName': ?productFamilyName,
      'productId': ?productId,
      'skuId': ?skuId,
    };
  }

  factory DiscountCustomPriceResponse.fromMap(Map<String, dynamic> map) {
    return DiscountCustomPriceResponse(
      applyDiscountOn: (map['applyDiscountOn'] as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionsItemResponse>(map['conditions']!, (value) => ConditionsItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customPriceProperties: map['customPriceProperties'] == null ? null : (CustomPricePropertiesResponse.fromMap((map['customPriceProperties']! as Map).cast<String, dynamic>())).input(),
      discountCombinationRule: map['discountCombinationRule'] == null ? null : (map['discountCombinationRule']! as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage']! as double).input(),
      discountType: (map['discountType'] as String).input(),
      priceGuaranteeProperties: map['priceGuaranteeProperties'] == null ? null : (PriceGuaranteePropertiesResponse.fromMap((map['priceGuaranteeProperties']! as Map).cast<String, dynamic>())).input(),
      productFamilyName: map['productFamilyName'] == null ? null : (map['productFamilyName']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      skuId: map['skuId'] == null ? null : (map['skuId']! as String).input(),
    );
  }
}

