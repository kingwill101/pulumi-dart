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
    this.categoryId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.productType,
    this.searchTerm,
    this.sort,
    this.suggestedPrice,
    this.supplierId,
    this.supplierNameKeyword,
  });

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
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchTerm: (() { final guardedValue = map['searchTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sort: (() { final guardedValue = map['sort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suggestedPrice: (() { final guardedValue = map['suggestedPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      supplierId: (() { final guardedValue = map['supplierId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supplierNameKeyword: (() { final guardedValue = map['supplierNameKeyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

