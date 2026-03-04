// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_claims_item.dart';
import 'market_set_prices_items.dart';

/// Custom price properties for a given discount.
class CustomPriceProperties {
  /// The billing period of the priceable node. Validation: Optional, Maximum length 128 characters. Only allowed if the availability derived by market, product, sku, and claims has terms and at least one of those terms has a billing period. When specified, termUnits must be specified.
  final pulumi.Input<String>? billingPeriod;

  /// The set of BigCat claims. Validation: Required. Must contain AgreementType, NationalCloud, and PricingAudience claims. Additionally requires AccessPass claim when creating custom price with action == consume on the pricing instructions.
  final pulumi.Input<List<CatalogClaimsItem>> catalogClaims;

  /// The catalog instance where the priceable node lives. Validation: Required. No defined format, will vary per team.
  final pulumi.Input<String> catalogId;

  /// The set of market set prices of the priceable node. Validation: Required. Must contain at least one element.
  final pulumi.Input<List<MarketSetPricesItems>> marketSetPrices;

  /// Must be present if the market, product, sku, and claims, and optional term information resolves to multiple availabilities that only differ by meter type. Validation: Maximum length 128 characters.
  final pulumi.Input<String>? meterType;

  /// The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
  final pulumi.Input<String> ruleType;

  /// The term units for the priceable node. Validation: Optional, Maximum length 128 characters. Must be present if and only if the availability derived by market, product, sku, and claims has terms.
  final pulumi.Input<String>? termUnits;

  /// Creates a new [CustomPriceProperties].
  /// [billingPeriod] The billing period of the priceable node. Validation: Optional, Maximum length 128 characters. Only allowed if the availability derived by market, product, sku, and claims has terms and at least one of those terms has a billing period. When specified, termUnits must be specified.
  /// [catalogClaims] The set of BigCat claims. Validation: Required. Must contain AgreementType, NationalCloud, and PricingAudience claims. Additionally requires AccessPass claim when creating custom price with action == consume on the pricing instructions.
  /// [catalogId] The catalog instance where the priceable node lives. Validation: Required. No defined format, will vary per team.
  /// [marketSetPrices] The set of market set prices of the priceable node. Validation: Required. Must contain at least one element.
  /// [meterType] Must be present if the market, product, sku, and claims, and optional term information resolves to multiple availabilities that only differ by meter type. Validation: Maximum length 128 characters.
  /// [ruleType] The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
  /// [termUnits] The term units for the priceable node. Validation: Optional, Maximum length 128 characters. Must be present if and only if the availability derived by market, product, sku, and claims has terms.
  CustomPriceProperties({
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
      'catalogClaims':
          pulumi.Input.mapInputValue<
            List<CatalogClaimsItem>,
            List<Map<String, dynamic>>
          >(
            catalogClaims,
            (value) =>
                pulumi.Input.encodeList<
                  CatalogClaimsItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'catalogId': catalogId,
      'marketSetPrices':
          pulumi.Input.mapInputValue<
            List<MarketSetPricesItems>,
            List<Map<String, dynamic>>
          >(
            marketSetPrices,
            (value) =>
                pulumi.Input.encodeList<
                  MarketSetPricesItems,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'meterType': ?meterType,
      'ruleType': ruleType,
      'termUnits': ?termUnits,
    };
  }

  factory CustomPriceProperties.fromMap(Map<String, dynamic> map) {
    return CustomPriceProperties(
      billingPeriod: (() {
        final guardedValue = map['billingPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      catalogClaims: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CatalogClaimsItem>(
          map['catalogClaims']!,
          (value) =>
              CatalogClaimsItem.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      marketSetPrices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MarketSetPricesItems>(
          map['marketSetPrices']!,
          (value) => MarketSetPricesItems.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      meterType: (() {
        final guardedValue = map['meterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      termUnits: (() {
        final guardedValue = map['termUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
