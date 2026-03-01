// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions_item.dart';
import 'price_guarantee_properties.dart';

/// Discount type properties including product family name
class DiscountProductFamily {
  /// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  final String applyDiscountOn;
  /// Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  final List<ConditionsItem>? conditions;
  /// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  final String? discountCombinationRule;
  /// Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  final double? discountPercentage;
  /// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// Expected value is 'ProductFamily'.
  final String discountType;
  /// Set only in price guarantee scenario.
  final PriceGuaranteeProperties? priceGuaranteeProperties;
  /// Product family for which the discount is given. Validation: Optional
  final String? productFamilyName;

  /// Creates a new [DiscountProductFamily].
  /// [applyDiscountOn] The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
  /// [conditions] Array of conditions for the discount. Validation: Optional. Maximum length is 1000.
  /// [discountCombinationRule] The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
  /// [discountPercentage] Discount percentage provided for the customer. Validation: Required unless this is a price rule.
  /// [discountType] Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
  /// [priceGuaranteeProperties] Set only in price guarantee scenario.
  /// [productFamilyName] Product family for which the discount is given. Validation: Optional
  DiscountProductFamily({
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
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionsItem, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'discountCombinationRule': ?discountCombinationRule,
      'discountPercentage': ?discountPercentage,
      'discountType': discountType,
      'priceGuaranteeProperties': ?priceGuaranteeProperties == null ? null : priceGuaranteeProperties!.toMap(),
      'productFamilyName': ?productFamilyName,
    };
  }

  factory DiscountProductFamily.fromMap(Map<String, dynamic> map) {
    return DiscountProductFamily(
      applyDiscountOn: map['applyDiscountOn'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionsItem>(map['conditions'], (value) => ConditionsItem.fromMap((value as Map).cast<String, dynamic>())),
      discountCombinationRule: map['discountCombinationRule'] == null ? null : map['discountCombinationRule'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      discountType: map['discountType'] as String,
      priceGuaranteeProperties: map['priceGuaranteeProperties'] == null ? null : PriceGuaranteeProperties.fromMap((map['priceGuaranteeProperties'] as Map).cast<String, dynamic>()),
      productFamilyName: map['productFamilyName'] == null ? null : map['productFamilyName'] as String,
    );
  }
}

