// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_audience.dart';
import 'google_cloud_retail_v2beta_color_info.dart';
import 'google_cloud_retail_v2beta_fulfillment_info.dart';
import 'google_cloud_retail_v2beta_image.dart';
import 'google_cloud_retail_v2beta_price_info.dart';
import 'google_cloud_retail_v2beta_promotion.dart';
import 'google_cloud_retail_v2beta_rating.dart';
import 'product_availability_retail_v2beta.dart';
import 'product_type_retail_v2beta.dart';

/// The set of arguments for Product.
class ProductRetailV2betaArgs {
  /// Highly encouraged. Extra product attributes to be included. For example, for products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the attributes here. Features that can take on one of a limited number of possible values. Two types of features can be set are: Textual features. some examples would be the brand/maker of a product, or country of a customer. Numerical features. Some examples would be the height/weight of a product, or age of a customer. For example: `{ "vendor": {"text": ["vendor123", "vendor456"]}, "lengths_cm": {"numbers":[2.3, 15.4]}, "heights_cm": {"numbers":[8.1, 6.4]} }`. This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is returned: * Max entries count: 200. * The key must be a UTF-8 encoded string with a length limit of 128 characters. * For indexable attribute, the key must match the pattern: `a-zA-Z0-9*`. For example, `key0LikeThis` or `KEY_1_LIKE_THIS`. * For text attributes, at most 400 values are allowed. Empty values are not allowed. Each value must be a non-empty UTF-8 encoded string with a length limit of 256 characters. * For number attributes, at most 400 values are allowed.
  final pulumi.Input<Map<String, String>>? attributes;

  /// The target group associated with a given audience (e.g. male, veterans, car owners, musicians, etc.) of the product.
  final pulumi.Input<GoogleCloudRetailV2betaAudience>? audience;

  /// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
  final pulumi.Input<ProductAvailabilityRetailV2beta>? availability;

  /// The available quantity of the item.
  final pulumi.Input<int>? availableQuantity;

  /// The timestamp when this Product becomes available for SearchService.Search. Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT.
  final pulumi.Input<String>? availableTime;
  final pulumi.Input<String> branchId;

  /// The brands of the product. A maximum of 30 brands are allowed unless overridden through the Google Cloud console. Each brand must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [brand](https://support.google.com/merchants/answer/6324351). Schema.org property [Product.brand](https://schema.org/brand).
  final pulumi.Input<List<String>>? brands;
  final pulumi.Input<String> catalogId;

  /// Product categories. This field is repeated for supporting one product belonging to several parallel categories. Strongly recommended using the full path for better search / recommendation quality. To represent full path of category, use '>' sign to separate different hierarchies. If '>' is part of the category name, replace it with other character(s). For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categories": [ "Shoes & Accessories > Shoes", "Sports & Fitness > Athletic Clothing > Shoes" ] Must be set for Type.PRIMARY Product otherwise an INVALID_ARGUMENT error is returned. At most 250 values are allowed per Product. Empty values are not allowed. Each value must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property google_product_category. Schema.org property [Product.category] (https://schema.org/category). [mc_google_product_category]: https://support.google.com/merchants/answer/6324436
  final pulumi.Input<List<String>>? categories;

  /// The id of the collection members when type is Type.COLLECTION. Non-existent product ids are allowed. The type of the members must be either Type.PRIMARY or Type.VARIANT otherwise an INVALID_ARGUMENT error is thrown. Should not set it for other types. A maximum of 1000 values are allowed. Otherwise, an INVALID_ARGUMENT error is return.
  final pulumi.Input<List<String>>? collectionMemberIds;

  /// The color of the product. Corresponding properties: Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  final pulumi.Input<GoogleCloudRetailV2betaColorInfo>? colorInfo;

  /// The condition of the product. Strongly encouraged to use the standard values: "new", "refurbished", "used". A maximum of 1 value is allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [condition](https://support.google.com/merchants/answer/6324469). Schema.org property [Offer.itemCondition](https://schema.org/itemCondition).
  final pulumi.Input<List<String>>? conditions;

  /// Product description. This field must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [description](https://support.google.com/merchants/answer/6324468). Schema.org property [Product.description](https://schema.org/description).
  final pulumi.Input<String>? description;

  /// The timestamp when this product becomes unavailable for SearchService.Search. Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT. In general, we suggest the users to delete the stale products explicitly, instead of using this field to determine staleness. If it is set, the Product is not available for SearchService.Search after expire_time. However, the product can still be retrieved by ProductService.GetProduct and ProductService.ListProducts. expire_time must be later than available_time and publish_time, otherwise an INVALID_ARGUMENT error is thrown. Corresponding properties: Google Merchant Center property [expiration_date](https://support.google.com/merchants/answer/6324499).
  final pulumi.Input<String>? expireTime;

  /// Fulfillment information, such as the store IDs for in-store pickup or region IDs for different shipping methods. All the elements must have distinct FulfillmentInfo.type. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<List<GoogleCloudRetailV2betaFulfillmentInfo>>?
      fulfillmentInfo;

  /// The Global Trade Item Number (GTIN) of the product. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. This field must be a Unigram. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [gtin](https://support.google.com/merchants/answer/6324461). Schema.org property [Product.isbn](https://schema.org/isbn), [Product.gtin8](https://schema.org/gtin8), [Product.gtin12](https://schema.org/gtin12), [Product.gtin13](https://schema.org/gtin13), or [Product.gtin14](https://schema.org/gtin14). If the value is not a valid GTIN, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String>? gtin;

  /// Immutable. Product identifier, which is the final component of name. For example, this field is "id_1", if name is `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/id_1`. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [id](https://support.google.com/merchants/answer/6324405). Schema.org property [Product.sku](https://schema.org/sku).
  final pulumi.Input<String>? id;

  /// Product images for the product. We highly recommend putting the main image first. A maximum of 300 images are allowed. Corresponding properties: Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  final pulumi.Input<List<GoogleCloudRetailV2betaImage>>? images;

  /// Language of the title/description and other string attributes. Use language tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). For product prediction, this field is ignored and the model automatically detects the text language. The Product can include text in different languages, but duplicating Products to provide text in multiple languages can result in degraded model performance. For product search this field is in use. It defaults to "en-US" if unset.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The material of the product. For example, "leather", "wooden". A maximum of 20 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 200 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [material](https://support.google.com/merchants/answer/6324410). Schema.org property [Product.material](https://schema.org/material).
  final pulumi.Input<List<String>>? materials;

  /// Immutable. Full resource name of the product, such as `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  final pulumi.Input<String>? name;

  /// The pattern or graphic print of the product. For example, "striped", "polka dot", "paisley". A maximum of 20 values are allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [pattern](https://support.google.com/merchants/answer/6324483). Schema.org property [Product.pattern](https://schema.org/pattern).
  final pulumi.Input<List<String>>? patterns;

  /// Product price and cost information. Corresponding properties: Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371).
  final pulumi.Input<GoogleCloudRetailV2betaPriceInfo>? priceInfo;

  /// Variant group identifier. Must be an id, with the same parent branch with this product. Otherwise, an error is thrown. For Type.PRIMARY Products, this field can only be empty or set to the same value as id. For VARIANT Products, this field cannot be empty. A maximum of 2,000 products are allowed to share the same Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [item_group_id](https://support.google.com/merchants/answer/6324507). Schema.org property [Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
  final pulumi.Input<String>? primaryProductId;

  /// Required. The ID to use for the Product, which will become the final component of the Product.name. If the caller does not have permission to create the Product, regardless of whether or not it exists, a PERMISSION_DENIED error is returned. This field must be unique among all Products with the same parent. Otherwise, an ALREADY_EXISTS error is returned. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// The promotions applied to the product. A maximum of 10 values are allowed per Product. Only Promotion.promotion_id will be used, other fields will be ignored if set.
  final pulumi.Input<List<GoogleCloudRetailV2betaPromotion>>? promotions;

  /// The timestamp when the product is published by the retailer for the first time, which indicates the freshness of the products. Note that this field is different from available_time, given it purely describes product freshness regardless of when it is available on search and recommendation.
  final pulumi.Input<String>? publishTime;

  /// The rating of this product.
  final pulumi.Input<GoogleCloudRetailV2betaRating>? rating;

  /// Indicates which fields in the Products are returned in SearchResponse. Supported fields for all types: * audience * availability * brands * color_info * conditions * gtin * materials * name * patterns * price_info * rating * sizes * title * uri Supported fields only for Type.PRIMARY and Type.COLLECTION: * categories * description * images Supported fields only for Type.VARIANT: * Only the first image in images To mark attributes as retrievable, include paths of the form "attributes.key" where "key" is the key of a custom attribute, as specified in attributes. For Type.PRIMARY and Type.COLLECTION, the following fields are always returned in SearchResponse by default: * name For Type.VARIANT, the following fields are always returned in by default: * name * color_info The maximum number of paths is 30. Otherwise, an INVALID_ARGUMENT error is returned. Note: Returning more fields in SearchResponse can increase response payload size and serving latency. This field is deprecated. Use the retrievable site-wide control instead.
  final pulumi.Input<String>? retrievableFields;

  /// The size of the product. To represent different size systems or size types, consider using this format: [[[size_system:]size_type:]size_value]. For example, in "US:MENS:M", "US" represents size system; "MENS" represents size type; "M" represents size value. In "GIRLS:27", size system is empty; "GIRLS" represents size type; "27" represents size value. In "32 inches", both size system and size type are empty, while size value is "32 inches". A maximum of 20 values are allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [size](https://support.google.com/merchants/answer/6324492), [size_type](https://support.google.com/merchants/answer/6324497), and [size_system](https://support.google.com/merchants/answer/6324502). Schema.org property [Product.size](https://schema.org/size).
  final pulumi.Input<List<String>>? sizes;

  /// Custom tags associated with the product. At most 250 values are allowed per Product. This value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. This tag can be used for filtering recommendation results by passing the tag as part of the PredictRequest.filter. Corresponding properties: Google Merchant Center property [custom_label_0–4](https://support.google.com/merchants/answer/6324473).
  final pulumi.Input<List<String>>? tags;

  /// Product title. This field must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [title](https://support.google.com/merchants/answer/6324415). Schema.org property [Product.name](https://schema.org/name).
  final pulumi.Input<String> title;

  /// Input only. The TTL (time to live) of the product. Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT. In general, we suggest the users to delete the stale products explicitly, instead of using this field to determine staleness. If it is set, it must be a non-negative value, and expire_time is set as current timestamp plus ttl. The derived expire_time is returned in the output and ttl is left blank when retrieving the Product. If it is set, the product is not available for SearchService.Search after current timestamp plus ttl. However, the product can still be retrieved by ProductService.GetProduct and ProductService.ListProducts.
  final pulumi.Input<String>? ttl;

  /// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
  final pulumi.Input<ProductTypeRetailV2beta>? type;

  /// Canonical URL directly linking to the product detail page. It is strongly recommended to provide a valid uri for the product, otherwise the service performance could be significantly degraded. This field must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [link](https://support.google.com/merchants/answer/6324416). Schema.org property [Offer.url](https://schema.org/url).
  final pulumi.Input<String>? uri;

  ProductRetailV2betaArgs({
    this.attributes,
    this.audience,
    this.availability,
    this.availableQuantity,
    this.availableTime,
    required this.branchId,
    this.brands,
    required this.catalogId,
    this.categories,
    this.collectionMemberIds,
    this.colorInfo,
    this.conditions,
    this.description,
    this.expireTime,
    this.fulfillmentInfo,
    this.gtin,
    this.id,
    this.images,
    this.languageCode,
    this.location,
    this.materials,
    this.name,
    this.patterns,
    this.priceInfo,
    this.primaryProductId,
    required this.productId,
    this.project,
    this.promotions,
    this.publishTime,
    this.rating,
    this.retrievableFields,
    this.sizes,
    this.tags,
    required this.title,
    this.ttl,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2betaAudience,
          Map<String, dynamic>>(audienceValue, (value) => value.toMap());
    }
    final availabilityValue = availability;
    if (availabilityValue != null) {
      map['availability'] = pulumi.Input.mapOptionalInputValue<
          ProductAvailabilityRetailV2beta,
          String>(availabilityValue, (value) => value.value);
    }
    final availableQuantityValue = availableQuantity;
    if (availableQuantityValue != null) {
      map['availableQuantity'] = availableQuantityValue;
    }
    final availableTimeValue = availableTime;
    if (availableTimeValue != null) {
      map['availableTime'] = availableTimeValue;
    }
    map['branchId'] = branchId;
    final brandsValue = brands;
    if (brandsValue != null) {
      map['brands'] = brandsValue;
    }
    map['catalogId'] = catalogId;
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = categoriesValue;
    }
    final collectionMemberIdsValue = collectionMemberIds;
    if (collectionMemberIdsValue != null) {
      map['collectionMemberIds'] = collectionMemberIdsValue;
    }
    final colorInfoValue = colorInfo;
    if (colorInfoValue != null) {
      map['colorInfo'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2betaColorInfo,
          Map<String, dynamic>>(colorInfoValue, (value) => value.toMap());
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = conditionsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final fulfillmentInfoValue = fulfillmentInfo;
    if (fulfillmentInfoValue != null) {
      map['fulfillmentInfo'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudRetailV2betaFulfillmentInfo>,
              List<Map<String, dynamic>>>(
          fulfillmentInfoValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudRetailV2betaFulfillmentInfo,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final gtinValue = gtin;
    if (gtinValue != null) {
      map['gtin'] = gtinValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudRetailV2betaImage>, List<Map<String, dynamic>>>(
          imagesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaImage,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] = materialsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final patternsValue = patterns;
    if (patternsValue != null) {
      map['patterns'] = patternsValue;
    }
    final priceInfoValue = priceInfo;
    if (priceInfoValue != null) {
      map['priceInfo'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2betaPriceInfo,
          Map<String, dynamic>>(priceInfoValue, (value) => value.toMap());
    }
    final primaryProductIdValue = primaryProductId;
    if (primaryProductIdValue != null) {
      map['primaryProductId'] = primaryProductIdValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final promotionsValue = promotions;
    if (promotionsValue != null) {
      map['promotions'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudRetailV2betaPromotion>,
              List<Map<String, dynamic>>>(
          promotionsValue,
          (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaPromotion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final publishTimeValue = publishTime;
    if (publishTimeValue != null) {
      map['publishTime'] = publishTimeValue;
    }
    final ratingValue = rating;
    if (ratingValue != null) {
      map['rating'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2betaRating,
          Map<String, dynamic>>(ratingValue, (value) => value.toMap());
    }
    final retrievableFieldsValue = retrievableFields;
    if (retrievableFieldsValue != null) {
      map['retrievableFields'] = retrievableFieldsValue;
    }
    final sizesValue = sizes;
    if (sizesValue != null) {
      map['sizes'] = sizesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['title'] = title;
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<ProductTypeRetailV2beta, String>(
              typeValue, (value) => value.value);
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory ProductRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return ProductRetailV2betaArgs(
      attributes:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['attributes']),
      audience: pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaAudience>(
          map['audience']),
      availability:
          pulumi.Input.asOptionalInput<ProductAvailabilityRetailV2beta>(
              map['availability']),
      availableQuantity:
          pulumi.Input.asOptionalInput<int>(map['availableQuantity']),
      availableTime: pulumi.Input.asOptionalInput<String>(map['availableTime']),
      branchId: pulumi.Input.asInput<String>(map['branchId']),
      brands: pulumi.Input.asOptionalInput<List<String>>(map['brands']),
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      categories: pulumi.Input.asOptionalInput<List<String>>(map['categories']),
      collectionMemberIds: pulumi.Input.asOptionalInput<List<String>>(
          map['collectionMemberIds']),
      colorInfo: pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaColorInfo>(
          map['colorInfo']),
      conditions: pulumi.Input.asOptionalInput<List<String>>(map['conditions']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      expireTime: pulumi.Input.asOptionalInput<String>(map['expireTime']),
      fulfillmentInfo: pulumi.Input.asOptionalInput<
          List<GoogleCloudRetailV2betaFulfillmentInfo>>(map['fulfillmentInfo']),
      gtin: pulumi.Input.asOptionalInput<String>(map['gtin']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      images: pulumi.Input.asOptionalInput<List<GoogleCloudRetailV2betaImage>>(
          map['images']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      materials: pulumi.Input.asOptionalInput<List<String>>(map['materials']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      patterns: pulumi.Input.asOptionalInput<List<String>>(map['patterns']),
      priceInfo: pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaPriceInfo>(
          map['priceInfo']),
      primaryProductId:
          pulumi.Input.asOptionalInput<String>(map['primaryProductId']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      promotions:
          pulumi.Input.asOptionalInput<List<GoogleCloudRetailV2betaPromotion>>(
              map['promotions']),
      publishTime: pulumi.Input.asOptionalInput<String>(map['publishTime']),
      rating: pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaRating>(
          map['rating']),
      retrievableFields:
          pulumi.Input.asOptionalInput<String>(map['retrievableFields']),
      sizes: pulumi.Input.asOptionalInput<List<String>>(map['sizes']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      title: pulumi.Input.asInput<String>(map['title']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
      type: pulumi.Input.asOptionalInput<ProductTypeRetailV2beta>(map['type']),
      uri: pulumi.Input.asOptionalInput<String>(map['uri']),
    );
  }
}
