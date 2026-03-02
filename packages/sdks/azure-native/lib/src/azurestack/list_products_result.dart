// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_response.dart';

/// Result data returned by listProducts.
class ListProductsResult {
  /// URI to the next page.
  final String? nextLink;
  /// List of products.
  final List<ProductResponse>? value;

  /// Creates a new [ListProductsResult].
  /// [nextLink] URI to the next page.
  /// [value] List of products.
  ListProductsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ProductResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListProductsResult.fromMap(Map<String, dynamic> map) {
    return ListProductsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ProductResponse>(map['value']!, (value) => ProductResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

