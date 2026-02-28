// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_catalog_item_category_hierarchy_response.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_response.dart';

/// Result data returned by getCatalogItem.
class GetCatalogItemResult {
  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  final List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse> categoryHierarchies;
  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  final String description;
  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  final GoogleCloudRecommendationengineV1beta1FeatureMapResponse itemAttributes;
  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  final String itemGroupId;
  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  final String languageCode;
  /// Optional. Metadata specific to retail products.
  final GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse productMetadata;
  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  final List<String> tags;
  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  final String title;

  /// Creates a new [GetCatalogItemResult].
  /// [categoryHierarchies] Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  /// [description] Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  /// [itemAttributes] Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  /// [itemGroupId] Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  /// [languageCode] Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  /// [productMetadata] Optional. Metadata specific to retail products.
  /// [tags] Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  /// [title] Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  GetCatalogItemResult({
    required this.categoryHierarchies,
    required this.description,
    required this.itemAttributes,
    required this.itemGroupId,
    required this.languageCode,
    required this.productMetadata,
    required this.tags,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryHierarchies': pulumi.Input.encodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse, Map<String, dynamic>>(categoryHierarchies, (value) => value.toMap()),
      'description': description,
      'itemAttributes': itemAttributes.toMap(),
      'itemGroupId': itemGroupId,
      'languageCode': languageCode,
      'productMetadata': productMetadata.toMap(),
      'tags': tags,
      'title': title,
    };
  }

  factory GetCatalogItemResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogItemResult(
      categoryHierarchies: pulumi.Input.decodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse>(map['categoryHierarchies'], (value) => GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      itemAttributes: GoogleCloudRecommendationengineV1beta1FeatureMapResponse.fromMap((map['itemAttributes'] as Map).cast<String, dynamic>()),
      itemGroupId: map['itemGroupId'] as String,
      languageCode: map['languageCode'] as String,
      productMetadata: GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse.fromMap((map['productMetadata'] as Map).cast<String, dynamic>()),
      tags: (map['tags'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}

