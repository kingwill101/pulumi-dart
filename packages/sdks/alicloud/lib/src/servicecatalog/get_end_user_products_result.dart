// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_end_user_products_end_user_product.dart';

/// Result data returned by getEndUserProducts.
class GetEndUserProductsResult {
  /// A list of End User Product Entries. Each element contains the following attributes:
  final List<GetEndUserProductsEndUserProduct> endUserProducts;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of End User Product IDs.
  final List<String> ids;
  final String? nameRegex;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? sortBy;
  final String? sortOrder;

  /// Creates a new [GetEndUserProductsResult].
  /// [endUserProducts] A list of End User Product Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of End User Product IDs.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [sortBy] Optional.
  /// [sortOrder] Optional.
  GetEndUserProductsResult({
    required this.endUserProducts,
    required this.id,
    required this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserProducts':
          pulumi.Input.encodeList<
            GetEndUserProductsEndUserProduct,
            Map<String, dynamic>
          >(endUserProducts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetEndUserProductsResult.fromMap(Map<String, dynamic> map) {
    return GetEndUserProductsResult(
      endUserProducts:
          pulumi.Input.decodeList<GetEndUserProductsEndUserProduct>(
            map['endUserProducts']!,
            (value) => GetEndUserProductsEndUserProduct.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
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
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      sortBy: (() {
        final guardedValue = map['sortBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
