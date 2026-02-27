// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'key_value.dart';

/// The set of arguments for Product.
class ProductArgs4 {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  final Input<String>? description;

  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  final Input<String>? displayName;
  final Input<String>? location;

  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  final Input<String>? name;

  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  final Input<String>? productCategory;

  /// A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final Input<String>? productId;

  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  final Input<List<KeyValue>>? productLabels;
  final Input<String>? project;

  ProductArgs4({
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.productCategory,
    this.productId,
    this.productLabels,
    this.project,
  });

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
      map['productLabels'] = Input.mapOptionalInputValue<List<KeyValue>,
              List<Map<String, dynamic>>>(
          productLabelsValue,
          (value) => Input.encodeList<KeyValue, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProductArgs4.fromMap(Map<String, dynamic> map) {
    return ProductArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      productCategory: Input.asOptionalInput<String>(map['productCategory']),
      productId: Input.asOptionalInput<String>(map['productId']),
      productLabels:
          Input.asOptionalInput<List<KeyValue>>(map['productLabels']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
