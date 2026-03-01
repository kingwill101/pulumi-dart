// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_interval_response.dart';

/// The price range of all variant Product having the same Product.primary_product_id.
class GoogleCloudRetailV2PriceInfoPriceRangeResponse {
  /// The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  final GoogleCloudRetailV2IntervalResponse originalPrice;

  /// The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  final GoogleCloudRetailV2IntervalResponse price;

  /// Creates a new [GoogleCloudRetailV2PriceInfoPriceRangeResponse].
  /// [originalPrice] The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  /// [price] The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  GoogleCloudRetailV2PriceInfoPriceRangeResponse({
    required this.originalPrice,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalPrice': originalPrice.toMap(),
      'price': price.toMap(),
    };
  }

  factory GoogleCloudRetailV2PriceInfoPriceRangeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2PriceInfoPriceRangeResponse(
      originalPrice: GoogleCloudRetailV2IntervalResponse.fromMap(
        (map['originalPrice'] as Map).cast<String, dynamic>(),
      ),
      price: GoogleCloudRetailV2IntervalResponse.fromMap(
        (map['price'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
