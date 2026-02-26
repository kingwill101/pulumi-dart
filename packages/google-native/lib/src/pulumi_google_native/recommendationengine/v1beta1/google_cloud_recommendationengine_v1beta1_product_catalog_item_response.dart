// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_recommendationengine_v1beta1_image_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_exact_price_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_price_range_response.dart';

/// ProductCatalogItem captures item metadata specific to retail products.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse {
  /// Optional. The available quantity of the item.
  final String availableQuantity;

  /// Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  final String canonicalProductUri;

  /// Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  final Map<String, String> costs;

  /// Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  final String currencyCode;

  /// Optional. The exact product price.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse
      exactPrice;

  /// Optional. Product images for the catalog item.
  final List<GoogleCloudRecommendationengineV1beta1ImageResponse> images;

  /// Optional. The product price range.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse
      priceRange;

  /// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  final String stockState;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse({
    required this.availableQuantity,
    required this.canonicalProductUri,
    required this.costs,
    required this.currencyCode,
    required this.exactPrice,
    required this.images,
    required this.priceRange,
    required this.stockState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availableQuantity'] = availableQuantity;
    map['canonicalProductUri'] = canonicalProductUri;
    map['costs'] = costs;
    map['currencyCode'] = currencyCode;
    map['exactPrice'] = exactPrice.toMap();
    map['images'] = Input.encodeList<
        GoogleCloudRecommendationengineV1beta1ImageResponse,
        Map<String, dynamic>>(images, (value) => value.toMap());
    map['priceRange'] = priceRange.toMap();
    map['stockState'] = stockState;
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse(
      availableQuantity: map['availableQuantity'] as String,
      canonicalProductUri: map['canonicalProductUri'] as String,
      costs: (map['costs'] as Map).cast<String, String>(),
      currencyCode: map['currencyCode'] as String,
      exactPrice:
          GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse
              .fromMap((map['exactPrice'] as Map).cast<String, dynamic>()),
      images:
          Input.decodeList<GoogleCloudRecommendationengineV1beta1ImageResponse>(
              map['images'],
              (value) =>
                  GoogleCloudRecommendationengineV1beta1ImageResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      priceRange:
          GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse
              .fromMap((map['priceRange'] as Map).cast<String, dynamic>()),
      stockState: map['stockState'] as String,
    );
  }
}
