// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_products_product.dart';

/// Result data returned by getProducts.
class GetProductsResult {
  /// The category id of the product.
  final String? categoryId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of product codes.
  final List<String> ids;
  final String? nameRegex;
  final String? outputFile;
  final String? productType;

  /// A list of products. Each element contains the following attributes:
  final List<GetProductsProduct> products;
  final String? searchTerm;
  final String? sort;

  /// The suggested price of the product.
  final double? suggestedPrice;

  /// The supplier id of the product.
  final String? supplierId;
  final String? supplierNameKeyword;

  /// Creates a new [GetProductsResult].
  /// [categoryId] The category id of the product.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of product codes.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [productType] Optional.
  /// [products] A list of products. Each element contains the following attributes:
  /// [searchTerm] Optional.
  /// [sort] Optional.
  /// [suggestedPrice] The suggested price of the product.
  /// [supplierId] The supplier id of the product.
  /// [supplierNameKeyword] Optional.
  GetProductsResult({
    this.categoryId,
    required this.id,
    required this.ids,
    this.nameRegex,
    this.outputFile,
    this.productType,
    required this.products,
    this.searchTerm,
    this.sort,
    this.suggestedPrice,
    this.supplierId,
    this.supplierNameKeyword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productType': ?productType,
      'products':
          pulumi.Input.encodeList<GetProductsProduct, Map<String, dynamic>>(
            products,
            (value) => value.toMap(),
          ),
      'searchTerm': ?searchTerm,
      'sort': ?sort,
      'suggestedPrice': ?suggestedPrice,
      'supplierId': ?supplierId,
      'supplierNameKeyword': ?supplierNameKeyword,
    };
  }

  factory GetProductsResult.fromMap(Map<String, dynamic> map) {
    return GetProductsResult(
      categoryId: (() {
        final guardedValue = map['categoryId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      products: pulumi.Input.decodeList<GetProductsProduct>(
        map['products']!,
        (value) =>
            GetProductsProduct.fromMap((value as Map).cast<String, dynamic>()),
      ),
      searchTerm: (() {
        final guardedValue = map['searchTerm'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sort: (() {
        final guardedValue = map['sort'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      suggestedPrice: (() {
        final guardedValue = map['suggestedPrice'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      supplierId: (() {
        final guardedValue = map['supplierId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      supplierNameKeyword: (() {
        final guardedValue = map['supplierNameKeyword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
