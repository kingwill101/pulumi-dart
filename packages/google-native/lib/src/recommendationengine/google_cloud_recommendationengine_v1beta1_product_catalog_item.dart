// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_image.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_exact_price.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_price_range.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_stock_state.dart';

/// ProductCatalogItem captures item metadata specific to retail products.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItem {
  /// Optional. The available quantity of the item.
  final String? availableQuantity;

  /// Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  final String? canonicalProductUri;

  /// Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  final Map<String, String>? costs;

  /// Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  final String? currencyCode;

  /// Optional. The exact product price.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice?
      exactPrice;

  /// Optional. Product images for the catalog item.
  final List<GoogleCloudRecommendationengineV1beta1Image>? images;

  /// Optional. The product price range.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange?
      priceRange;

  /// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState?
      stockState;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItem].
  /// [availableQuantity] Optional. The available quantity of the item.
  /// [canonicalProductUri] Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  /// [costs] Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  /// [currencyCode] Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  /// [exactPrice] Optional. The exact product price.
  /// [images] Optional. Product images for the catalog item.
  /// [priceRange] Optional. The product price range.
  /// [stockState] Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItem({
    this.availableQuantity,
    this.canonicalProductUri,
    this.costs,
    this.currencyCode,
    this.exactPrice,
    this.images,
    this.priceRange,
    this.stockState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availableQuantityValue = availableQuantity;
    if (availableQuantityValue != null) {
      map['availableQuantity'] = availableQuantityValue;
    }
    final canonicalProductUriValue = canonicalProductUri;
    if (canonicalProductUriValue != null) {
      map['canonicalProductUri'] = canonicalProductUriValue;
    }
    final costsValue = costs;
    if (costsValue != null) {
      map['costs'] = costsValue;
    }
    final currencyCodeValue = currencyCode;
    if (currencyCodeValue != null) {
      map['currencyCode'] = currencyCodeValue;
    }
    final exactPriceValue = exactPrice;
    if (exactPriceValue != null) {
      map['exactPrice'] = exactPriceValue.toMap();
    }
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = pulumi.Input.encodeList<
          GoogleCloudRecommendationengineV1beta1Image,
          Map<String, dynamic>>(imagesValue, (value) => value.toMap());
    }
    final priceRangeValue = priceRange;
    if (priceRangeValue != null) {
      map['priceRange'] = priceRangeValue.toMap();
    }
    final stockStateValue = stockState;
    if (stockStateValue != null) {
      map['stockState'] = stockStateValue.value;
    }
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItem(
      availableQuantity: map['availableQuantity'] == null
          ? null
          : map['availableQuantity'] as String,
      canonicalProductUri: map['canonicalProductUri'] == null
          ? null
          : map['canonicalProductUri'] as String,
      costs: map['costs'] == null
          ? null
          : (map['costs'] as Map).cast<String, String>(),
      currencyCode:
          map['currencyCode'] == null ? null : map['currencyCode'] as String,
      exactPrice: map['exactPrice'] == null
          ? null
          : GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
              .fromMap((map['exactPrice'] as Map).cast<String, dynamic>()),
      images: map['images'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudRecommendationengineV1beta1Image>(
              map['images'],
              (value) => GoogleCloudRecommendationengineV1beta1Image.fromMap(
                  (value as Map).cast<String, dynamic>())),
      priceRange: map['priceRange'] == null
          ? null
          : GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
              .fromMap((map['priceRange'] as Map).cast<String, dynamic>()),
      stockState: map['stockState'] == null
          ? null
          : GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState
              .fromValue(map['stockState'] as String),
    );
  }
}
