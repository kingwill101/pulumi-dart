// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_recommendationengine_v1beta1_catalog_item_category_hierarchy.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item.dart';

/// The set of arguments for CatalogItem.
class CatalogItemArgs {
  final Input<String> catalogId;

  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  final Input<
          List<
              GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>>
      categoryHierarchies;

  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  final Input<String>? description;

  /// Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id must be unique among all catalog items within the same catalog. It should also be used when logging user events in order for the user events to be joined with the Catalog.
  final Input<String> id;

  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  final Input<GoogleCloudRecommendationengineV1beta1FeatureMap>? itemAttributes;

  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  final Input<String>? itemGroupId;

  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// Optional. Metadata specific to retail products.
  final Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItem>?
      productMetadata;
  final Input<String>? project;

  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  final Input<List<String>>? tags;

  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  final Input<String> title;

  CatalogItemArgs({
    required this.catalogId,
    required this.categoryHierarchies,
    this.description,
    required this.id,
    this.itemAttributes,
    this.itemGroupId,
    this.languageCode,
    this.location,
    this.productMetadata,
    this.project,
    this.tags,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['categoryHierarchies'] = Input.mapInputValue<
            List<
                GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>,
            List<Map<String, dynamic>>>(
        categoryHierarchies,
        (value) => Input.encodeList<
            GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['id'] = id;
    final itemAttributesValue = itemAttributes;
    if (itemAttributesValue != null) {
      map['itemAttributes'] = Input.mapOptionalInputValue<
          GoogleCloudRecommendationengineV1beta1FeatureMap,
          Map<String, dynamic>>(itemAttributesValue, (value) => value.toMap());
    }
    final itemGroupIdValue = itemGroupId;
    if (itemGroupIdValue != null) {
      map['itemGroupId'] = itemGroupIdValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final productMetadataValue = productMetadata;
    if (productMetadataValue != null) {
      map['productMetadata'] = Input.mapOptionalInputValue<
          GoogleCloudRecommendationengineV1beta1ProductCatalogItem,
          Map<String, dynamic>>(productMetadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['title'] = title;
    return map;
  }

  factory CatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return CatalogItemArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      categoryHierarchies: Input.asInput<
              List<
                  GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>>(
          map['categoryHierarchies']),
      description: Input.asOptionalInput<String>(map['description']),
      id: Input.asInput<String>(map['id']),
      itemAttributes: Input.asOptionalInput<
              GoogleCloudRecommendationengineV1beta1FeatureMap>(
          map['itemAttributes']),
      itemGroupId: Input.asOptionalInput<String>(map['itemGroupId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      productMetadata: Input.asOptionalInput<
              GoogleCloudRecommendationengineV1beta1ProductCatalogItem>(
          map['productMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      title: Input.asInput<String>(map['title']),
    );
  }
}
