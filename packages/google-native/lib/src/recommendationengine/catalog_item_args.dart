// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_catalog_item_category_hierarchy.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item.dart';

/// {@template pulumi_recommendationengine_v1beta1_catalog_item_args_doc}
/// The set of arguments for CatalogItem.
/// {@endtemplate}
/// {@macro pulumi_recommendationengine_v1beta1_catalog_item_args_doc}
class CatalogItemArgs {
  final pulumi.Input<String> catalogId;
  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  final pulumi.Input<List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>> categoryHierarchies;
  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  final pulumi.Input<String>? description;
  /// Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id must be unique among all catalog items within the same catalog. It should also be used when logging user events in order for the user events to be joined with the Catalog.
  final pulumi.Input<String> id;
  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1FeatureMap>? itemAttributes;
  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  final pulumi.Input<String>? itemGroupId;
  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// Optional. Metadata specific to retail products.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItem>? productMetadata;
  final pulumi.Input<String>? project;
  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  final pulumi.Input<List<String>>? tags;
  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  final pulumi.Input<String> title;

  /// Creates a new [CatalogItemArgs].
  /// [catalogId] Required.
  /// [categoryHierarchies] Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  /// [description] Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  /// [id] Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id must be unique among all catalog items within the same catalog. It should also be used when logging user events in order for the user events to be joined with the Catalog.
  /// [itemAttributes] Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  /// [itemGroupId] Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  /// [languageCode] Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  /// [location] Optional.
  /// [productMetadata] Optional. Metadata specific to retail products.
  /// [project] Optional.
  /// [tags] Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  /// [title] Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  CatalogItemArgs({
    required String catalogId,
    required List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy> categoryHierarchies,
    String? description,
    required String id,
    GoogleCloudRecommendationengineV1beta1FeatureMap? itemAttributes,
    String? itemGroupId,
    String? languageCode,
    String? location,
    GoogleCloudRecommendationengineV1beta1ProductCatalogItem? productMetadata,
    String? project,
    List<String>? tags,
    required String title,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      categoryHierarchies = pulumi.Input.asInput<List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>>(categoryHierarchies),
      description = pulumi.Input.asOptionalInput<String>(description),
      id = pulumi.Input.asInput<String>(id),
      itemAttributes = pulumi.Input.asOptionalInput<GoogleCloudRecommendationengineV1beta1FeatureMap>(itemAttributes),
      itemGroupId = pulumi.Input.asOptionalInput<String>(itemGroupId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      productMetadata = pulumi.Input.asOptionalInput<GoogleCloudRecommendationengineV1beta1ProductCatalogItem>(productMetadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      title = pulumi.Input.asInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'categoryHierarchies': pulumi.Input.mapInputValue<List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>, List<Map<String, dynamic>>>(categoryHierarchies, (value) => pulumi.Input.encodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'id': id,
      'itemAttributes': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1FeatureMap, Map<String, dynamic>>(itemAttributes, (value) => value.toMap()),
      'itemGroupId': ?itemGroupId,
      'languageCode': ?languageCode,
      'location': ?location,
      'productMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItem, Map<String, dynamic>>(productMetadata, (value) => value.toMap()),
      'project': ?project,
      'tags': ?tags,
      'title': title,
    };
  }

  factory CatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return CatalogItemArgs(
      catalogId: map['catalogId'] as String,
      categoryHierarchies: pulumi.Input.decodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>(map['categoryHierarchies'], (value) => GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      itemAttributes: map['itemAttributes'] == null ? null : GoogleCloudRecommendationengineV1beta1FeatureMap.fromMap((map['itemAttributes'] as Map).cast<String, dynamic>()),
      itemGroupId: map['itemGroupId'] == null ? null : map['itemGroupId'] as String,
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      productMetadata: map['productMetadata'] == null ? null : GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromMap((map['productMetadata'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}

