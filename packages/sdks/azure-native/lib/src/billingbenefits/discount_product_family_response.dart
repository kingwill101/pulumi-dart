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
  const DiscountProductFamilyResponse({
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
      applyDiscountOn: pulumi.Input.fromValue(map['applyDiscountOn'] as String),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionsItemResponse>(guardedValue, (value) => ConditionsItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discountCombinationRule: (() { final guardedValue = map['discountCombinationRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      discountType: pulumi.Input.fromValue(map['discountType'] as String),
      priceGuaranteeProperties: (() { final guardedValue = map['priceGuaranteeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PriceGuaranteePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      productFamilyName: (() { final guardedValue = map['productFamilyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
