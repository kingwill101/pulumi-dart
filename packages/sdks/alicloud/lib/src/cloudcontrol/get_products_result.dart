// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_products_product.dart';

/// Result data returned by getProducts.
class GetProductsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Product IDs.
  final List<String> ids;
  final String? nameRegex;

  /// A list of name of Products.
  final List<String> names;
  final String? outputFile;

  /// A list of Product Entries. Each element contains the following attributes:
  final List<GetProductsProduct> products;

  /// Creates a new [GetProductsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Product IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Products.
  /// [outputFile] Optional.
  /// [products] A list of Product Entries. Each element contains the following attributes:
  GetProductsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'products':
          pulumi.Input.encodeList<GetProductsProduct, Map<String, dynamic>>(
            products,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetProductsResult.fromMap(Map<String, dynamic> map) {
    return GetProductsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      products: pulumi.Input.decodeList<GetProductsProduct>(
        map['products']!,
        (value) =>
            GetProductsProduct.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
