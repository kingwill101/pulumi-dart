// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_interval_response.dart';

/// The price range of all variant Product having the same Product.primary_product_id.
class GoogleCloudRetailV2betaPriceInfoPriceRangeResponse {
  /// The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  final GoogleCloudRetailV2betaIntervalResponse originalPrice;

  /// The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  final GoogleCloudRetailV2betaIntervalResponse price;

  GoogleCloudRetailV2betaPriceInfoPriceRangeResponse({
    required this.originalPrice,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['originalPrice'] = originalPrice.toMap();
    map['price'] = price.toMap();
    return map;
  }

  factory GoogleCloudRetailV2betaPriceInfoPriceRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaPriceInfoPriceRangeResponse(
      originalPrice: GoogleCloudRetailV2betaIntervalResponse.fromMap(
          (map['originalPrice'] as Map).cast<String, dynamic>()),
      price: GoogleCloudRetailV2betaIntervalResponse.fromMap(
          (map['price'] as Map).cast<String, dynamic>()),
    );
  }
}
