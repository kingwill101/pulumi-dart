// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prices_price_module_detail.dart';
import 'get_prices_price_promotion_detail.dart';

class GetPricesPrice {
  /// Currency. Value range: CNY: RMB. USD: USD. JPY: Japanese yen.
  final pulumi.Input<String> currency;

  /// Discount
  final pulumi.Input<double> discountPrice;

  /// Pricing Module Price Details
  final pulumi.Input<List<GetPricesPriceModuleDetail>> moduleDetails;

  /// Original Price
  final pulumi.Input<double> originalPrice;

  /// Offer Details
  final pulumi.Input<List<GetPricesPricePromotionDetail>> promotionDetails;

  /// Preferential price
  final pulumi.Input<double> tradePrice;

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
      'moduleDetails':
          pulumi.Input.mapInputValue<
            List<GetPricesPriceModuleDetail>,
            List<Map<String, dynamic>>
          >(
            moduleDetails,
            (value) =>
                pulumi.Input.encodeList<
                  GetPricesPriceModuleDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'originalPrice': originalPrice,
      'promotionDetails':
          pulumi.Input.mapInputValue<
            List<GetPricesPricePromotionDetail>,
            List<Map<String, dynamic>>
          >(
            promotionDetails,
            (value) =>
                pulumi.Input.encodeList<
                  GetPricesPricePromotionDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tradePrice': tradePrice,
    };
  }

  factory GetPricesPrice.fromMap(Map<String, dynamic> map) {
    return GetPricesPrice(
      currency: pulumi.Input.fromValue(map['currency'] as String),
      discountPrice: pulumi.Input.fromValue(map['discountPrice'] as double),
      moduleDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPricesPriceModuleDetail>(
          map['moduleDetails']!,
          (value) => GetPricesPriceModuleDetail.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      originalPrice: pulumi.Input.fromValue(map['originalPrice'] as double),
      promotionDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPricesPricePromotionDetail>(
          map['promotionDetails']!,
          (value) => GetPricesPricePromotionDetail.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tradePrice: pulumi.Input.fromValue(map['tradePrice'] as double),
    );
  }
}
