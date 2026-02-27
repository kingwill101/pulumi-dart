// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_response.dart';

/// Result data returned by getProduct.
class GetProductVisionV1Result {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  final String description;

  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  final String displayName;

  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  final String name;

  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  final String productCategory;

  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  final List<KeyValueResponse> productLabels;

  GetProductVisionV1Result({
    required this.description,
    required this.displayName,
    required this.name,
    required this.productCategory,
    required this.productLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['productCategory'] = productCategory;
    map['productLabels'] =
        pulumi.Input.encodeList<KeyValueResponse, Map<String, dynamic>>(
            productLabels, (value) => value.toMap());
    return map;
  }

  factory GetProductVisionV1Result.fromMap(Map<String, dynamic> map) {
    return GetProductVisionV1Result(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      productCategory: map['productCategory'] as String,
      productLabels: pulumi.Input.decodeList<KeyValueResponse>(
          map['productLabels'],
          (value) =>
              KeyValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
