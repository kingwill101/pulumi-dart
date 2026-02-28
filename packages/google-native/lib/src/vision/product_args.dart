// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value.dart';

/// {@template pulumi_vision_v1_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_product_args_doc}
class ProductArgs {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  final pulumi.Input<String>? description;

  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  final pulumi.Input<String>? name;

  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  final pulumi.Input<String>? productCategory;

  /// A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final pulumi.Input<String>? productId;

  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  final pulumi.Input<List<KeyValue>>? productLabels;
  final pulumi.Input<String>? project;

  /// Creates a new [ProductArgs].
  /// [description] User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  /// [displayName] The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  /// [location] Optional.
  /// [name] The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  /// [productCategory] Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  /// [productId] A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  /// [productLabels] Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  /// [project] Optional.
  ProductArgs({
    String? description,
    String? displayName,
    String? location,
    String? name,
    String? productCategory,
    String? productId,
    List<KeyValue>? productLabels,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        productCategory = pulumi.Input.asOptionalInput<String>(productCategory),
        productId = pulumi.Input.asOptionalInput<String>(productId),
        productLabels =
            pulumi.Input.asOptionalInput<List<KeyValue>>(productLabels),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final productCategoryValue = productCategory;
    if (productCategoryValue != null) {
      map['productCategory'] = productCategoryValue;
    }
    final productIdValue = productId;
    if (productIdValue != null) {
      map['productId'] = productIdValue;
    }
    final productLabelsValue = productLabels;
    if (productLabelsValue != null) {
      map['productLabels'] = pulumi.Input.mapOptionalInputValue<List<KeyValue>,
              List<Map<String, dynamic>>>(
          productLabelsValue,
          (value) => pulumi.Input.encodeList<KeyValue, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      productCategory: map['productCategory'] == null
          ? null
          : map['productCategory'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      productLabels: map['productLabels'] == null
          ? null
          : pulumi.Input.decodeList<KeyValue>(
              map['productLabels'],
              (value) =>
                  KeyValue.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
