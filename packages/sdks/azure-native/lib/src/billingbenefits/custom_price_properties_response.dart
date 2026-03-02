// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_claims_item_response.dart';
import 'market_set_prices_items_response.dart';

/// Custom price properties for a given discount.
class CustomPricePropertiesResponse {
  /// The billing period of the priceable node. Validation: Optional, Maximum length 128 characters. Only allowed if the availability derived by market, product, sku, and claims has terms and at least one of those terms has a billing period. When specified, termUnits must be specified.
  final pulumi.Input<String>? billingPeriod;
  /// The set of BigCat claims. Validation: Required. Must contain AgreementType, NationalCloud, and PricingAudience claims. Additionally requires AccessPass claim when creating custom price with action == consume on the pricing instructions.
  final pulumi.Input<List<CatalogClaimsItemResponse>> catalogClaims;
  /// The catalog instance where the priceable node lives. Validation: Required. No defined format, will vary per team.
  final pulumi.Input<String> catalogId;
  /// The set of market set prices of the priceable node. Validation: Required. Must contain at least one element.
  final pulumi.Input<List<MarketSetPricesItemsResponse>> marketSetPrices;
  /// Must be present if the market, product, sku, and claims, and optional term information resolves to multiple availabilities that only differ by meter type. Validation: Maximum length 128 characters.
  final pulumi.Input<String>? meterType;
  /// The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
  final pulumi.Input<String> ruleType;
  /// The term units for the priceable node. Validation: Optional, Maximum length 128 characters. Must be present if and only if the availability derived by market, product, sku, and claims has terms.
  final pulumi.Input<String>? termUnits;

  /// Creates a new [CustomPricePropertiesResponse].
  /// [billingPeriod] The billing period of the priceable node. Validation: Optional, Maximum length 128 characters. Only allowed if the availability derived by market, product, sku, and claims has terms and at least one of those terms has a billing period. When specified, termUnits must be specified.
  /// [catalogClaims] The set of BigCat claims. Validation: Required. Must contain AgreementType, NationalCloud, and PricingAudience claims. Additionally requires AccessPass claim when creating custom price with action == consume on the pricing instructions.
  /// [catalogId] The catalog instance where the priceable node lives. Validation: Required. No defined format, will vary per team.
  /// [marketSetPrices] The set of market set prices of the priceable node. Validation: Required. Must contain at least one element.
  /// [meterType] Must be present if the market, product, sku, and claims, and optional term information resolves to multiple availabilities that only differ by meter type. Validation: Maximum length 128 characters.
  /// [ruleType] The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
  /// [termUnits] The term units for the priceable node. Validation: Optional, Maximum length 128 characters. Must be present if and only if the availability derived by market, product, sku, and claims has terms.
  CustomPricePropertiesResponse({
    this.billingPeriod,
    required this.catalogClaims,
    required this.catalogId,
    required this.marketSetPrices,
    this.meterType,
    required this.ruleType,
    this.termUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingPeriod': ?billingPeriod,
      'catalogClaims': pulumi.Input.mapInputValue<List<CatalogClaimsItemResponse>, List<Map<String, dynamic>>>(catalogClaims, (value) => pulumi.Input.encodeList<CatalogClaimsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'catalogId': catalogId,
      'marketSetPrices': pulumi.Input.mapInputValue<List<MarketSetPricesItemsResponse>, List<Map<String, dynamic>>>(marketSetPrices, (value) => pulumi.Input.encodeList<MarketSetPricesItemsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'meterType': ?meterType,
      'ruleType': ruleType,
      'termUnits': ?termUnits,
    };
  }

  factory CustomPricePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomPricePropertiesResponse(
      billingPeriod: map['billingPeriod'] == null ? null : (map['billingPeriod'] as String).input(),
      catalogClaims: (pulumi.Input.decodeList<CatalogClaimsItemResponse>(map['catalogClaims'], (value) => CatalogClaimsItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      catalogId: (map['catalogId'] as String).input(),
      marketSetPrices: (pulumi.Input.decodeList<MarketSetPricesItemsResponse>(map['marketSetPrices'], (value) => MarketSetPricesItemsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      meterType: map['meterType'] == null ? null : (map['meterType'] as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      termUnits: map['termUnits'] == null ? null : (map['termUnits'] as String).input(),
    );
  }
}

