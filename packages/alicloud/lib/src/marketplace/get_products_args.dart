// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_products_get_products_args_doc}
/// Arguments for getProducts.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_products_get_products_args_doc}
class GetProductsArgs {
  /// The Category ID of products.
  final pulumi.Input<String>? categoryId;
  /// A list of product code.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to apply to the product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The type of products, Valid values: `APP`, `SERVICE`, `MIRROR`, `DOWNLOAD` and `API_SERVICE`.
  final pulumi.Input<String>? productType;
  /// Search term in this query.
  final pulumi.Input<String>? searchTerm;
  /// This field determines how to sort the filtered results, Valid values: `user_count-desc`, `created_on-desc`, `price-desc` and `score-desc`.
  final pulumi.Input<String>? sort;
  /// The suggested price of the product.
  final pulumi.Input<double>? suggestedPrice;
  /// The supplier id of the product.
  final pulumi.Input<String>? supplierId;
  /// The supplier name keyword of the product.
  final pulumi.Input<String>? supplierNameKeyword;

  /// Creates a new [GetProductsArgs].
  /// [categoryId] The Category ID of products.
  /// [ids] A list of product code.
  /// [nameRegex] A regex string to apply to the product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productType] The type of products, Valid values: `APP`, `SERVICE`, `MIRROR`, `DOWNLOAD` and `API_SERVICE`.
  /// [searchTerm] Search term in this query.
  /// [sort] This field determines how to sort the filtered results, Valid values: `user_count-desc`, `created_on-desc`, `price-desc` and `score-desc`.
  /// [suggestedPrice] The suggested price of the product.
  /// [supplierId] The supplier id of the product.
  /// [supplierNameKeyword] The supplier name keyword of the product.
  GetProductsArgs({
    String? categoryId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? productType,
    String? searchTerm,
    String? sort,
    double? suggestedPrice,
    String? supplierId,
    String? supplierNameKeyword,
  }) :
      categoryId = pulumi.Input.asOptionalInput<String>(categoryId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      searchTerm = pulumi.Input.asOptionalInput<String>(searchTerm),
      sort = pulumi.Input.asOptionalInput<String>(sort),
      suggestedPrice = pulumi.Input.asOptionalInput<double>(suggestedPrice),
      supplierId = pulumi.Input.asOptionalInput<String>(supplierId),
      supplierNameKeyword = pulumi.Input.asOptionalInput<String>(supplierNameKeyword);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productType': ?productType,
      'searchTerm': ?searchTerm,
      'sort': ?sort,
      'suggestedPrice': ?suggestedPrice,
      'supplierId': ?supplierId,
      'supplierNameKeyword': ?supplierNameKeyword,
    };
  }

  factory GetProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetProductsArgs(
      categoryId: map['categoryId'] == null ? null : map['categoryId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productType: map['productType'] == null ? null : map['productType'] as String,
      searchTerm: map['searchTerm'] == null ? null : map['searchTerm'] as String,
      sort: map['sort'] == null ? null : map['sort'] as String,
      suggestedPrice: map['suggestedPrice'] == null ? null : map['suggestedPrice'] as double,
      supplierId: map['supplierId'] == null ? null : map['supplierId'] as String,
      supplierNameKeyword: map['supplierNameKeyword'] == null ? null : map['supplierNameKeyword'] as String,
    );
  }
}

