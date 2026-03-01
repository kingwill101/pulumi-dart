// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prices_price_module_detail.dart';
import 'get_prices_price_promotion_detail.dart';

class GetPricesPrice {
  /// Currency. Value range: CNY: RMB. USD: USD. JPY: Japanese yen.
  final String currency;
  /// Discount
  final double discountPrice;
  /// Pricing Module Price Details
  final List<GetPricesPriceModuleDetail> moduleDetails;
  /// Original Price
  final double originalPrice;
  /// Offer Details
  final List<GetPricesPricePromotionDetail> promotionDetails;
  /// Preferential price
  final double tradePrice;

  /// Creates a new [GetPricesPrice].
  /// [currency] Currency. Value range: CNY: RMB. USD: USD. JPY: Japanese yen.
  /// [discountPrice] Discount
  /// [moduleDetails] Pricing Module Price Details
  /// [originalPrice] Original Price
  /// [promotionDetails] Offer Details
  /// [tradePrice] Preferential price
  GetPricesPrice({
    required this.currency,
    required this.discountPrice,
    required this.moduleDetails,
    required this.originalPrice,
    required this.promotionDetails,
    required this.tradePrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'discountPrice': discountPrice,
      'moduleDetails': pulumi.Input.encodeList<GetPricesPriceModuleDetail, Map<String, dynamic>>(moduleDetails, (value) => value.toMap()),
      'originalPrice': originalPrice,
      'promotionDetails': pulumi.Input.encodeList<GetPricesPricePromotionDetail, Map<String, dynamic>>(promotionDetails, (value) => value.toMap()),
      'tradePrice': tradePrice,
    };
  }

  factory GetPricesPrice.fromMap(Map<String, dynamic> map) {
    return GetPricesPrice(
      currency: map['currency'] as String,
      discountPrice: map['discountPrice'] as double,
      moduleDetails: pulumi.Input.decodeList<GetPricesPriceModuleDetail>(map['moduleDetails'], (value) => GetPricesPriceModuleDetail.fromMap((value as Map).cast<String, dynamic>())),
      originalPrice: map['originalPrice'] as double,
      promotionDetails: pulumi.Input.decodeList<GetPricesPricePromotionDetail>(map['promotionDetails'], (value) => GetPricesPricePromotionDetail.fromMap((value as Map).cast<String, dynamic>())),
      tradePrice: map['tradePrice'] as double,
    );
  }
}

