// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioned_products_product.dart';
import 'get_provisioned_products_provisioned_product.dart';

/// Result data returned by getProvisionedProducts.
class GetProvisionedProductsResult {
  final String? accessLevelFilter;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Provisioned Product IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Provisioned Products.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// (Deprecated since v1.197.0) A list of Provisioned Product Entries. Each element contains the following attributes:
  final List<GetProvisionedProductsProduct> products;
  /// (Available since v1.197.0) A list of Provisioned Product Entries. Each element contains the following attributes:
  final List<GetProvisionedProductsProvisionedProduct> provisionedProducts;
  final String? sortBy;
  final String? sortOrder;

  /// Creates a new [GetProvisionedProductsResult].
  /// [accessLevelFilter] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Provisioned Product IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Provisioned Products.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [products] (Deprecated since v1.197.0) A list of Provisioned Product Entries. Each element contains the following attributes:
  /// [provisionedProducts] (Available since v1.197.0) A list of Provisioned Product Entries. Each element contains the following attributes:
  /// [sortBy] Optional.
  /// [sortOrder] Optional.
  GetProvisionedProductsResult({
    this.accessLevelFilter,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.products,
    required this.provisionedProducts,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevelFilter': ?accessLevelFilter,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'products': pulumi.Input.encodeList<GetProvisionedProductsProduct, Map<String, dynamic>>(products, (value) => value.toMap()),
      'provisionedProducts': pulumi.Input.encodeList<GetProvisionedProductsProvisionedProduct, Map<String, dynamic>>(provisionedProducts, (value) => value.toMap()),
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetProvisionedProductsResult.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsResult(
      accessLevelFilter: map['accessLevelFilter'] == null ? null : map['accessLevelFilter'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      products: pulumi.Input.decodeList<GetProvisionedProductsProduct>(map['products'], (value) => GetProvisionedProductsProduct.fromMap((value as Map).cast<String, dynamic>())),
      provisionedProducts: pulumi.Input.decodeList<GetProvisionedProductsProvisionedProduct>(map['provisionedProducts'], (value) => GetProvisionedProductsProvisionedProduct.fromMap((value as Map).cast<String, dynamic>())),
      sortBy: map['sortBy'] == null ? null : map['sortBy'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
    );
  }
}

