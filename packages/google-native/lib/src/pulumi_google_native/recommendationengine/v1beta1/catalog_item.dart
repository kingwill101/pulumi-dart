import 'package:pulumi/pulumi.dart';
import 'catalog_item_args.dart';
import 'google_cloud_recommendationengine_v1beta1_catalog_item_category_hierarchy_response.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_response.dart';

/// Creates a catalog item.
/// Auto-naming is currently not supported for this resource.
class CatalogItem extends CustomResource {
  late final Output<String> catalogId;

  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  late final Output<
          List<
              GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse>>
      categoryHierarchies;

  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  late final Output<String> description;

  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  late final Output<GoogleCloudRecommendationengineV1beta1FeatureMapResponse>
      itemAttributes;

  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  late final Output<String> itemGroupId;

  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  late final Output<String> languageCode;
  late final Output<String> location;

  /// Optional. Metadata specific to retail products.
  late final Output<
          GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse>
      productMetadata;
  late final Output<String> project;

  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  late final Output<List<String>> tags;

  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  late final Output<String> title;

  CatalogItem(
    String name, {
    CatalogItemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:recommendationengine/v1beta1:CatalogItem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.categoryHierarchies = Output.createUnknown<
        List<
            GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse>>();
    this.description = Output.createUnknown<String>();
    this.itemAttributes = Output.createUnknown<
        GoogleCloudRecommendationengineV1beta1FeatureMapResponse>();
    this.itemGroupId = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.productMetadata = Output.createUnknown<
        GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse>();
    this.project = Output.createUnknown<String>();
    this.tags = Output.createUnknown<List<String>>();
    this.title = Output.createUnknown<String>();
  }
}
