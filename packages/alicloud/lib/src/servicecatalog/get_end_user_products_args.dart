// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_end_user_products_get_end_user_products_args_doc}
/// Arguments for getEndUserProducts.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_end_user_products_get_end_user_products_args_doc}
class GetEndUserProductsArgs {
  /// A list of End User Product IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The field that is used to sort the queried data. The value is fixed as CreateTime, which specifies the creation time of products.
  final pulumi.Input<String>? sortBy;
  /// The order in which you want to sort the queried data. Valid values: `Asc`, `Desc`.
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetEndUserProductsArgs].
  /// [ids] A list of End User Product IDs.
  /// [nameRegex] A regex string to filter results by product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [sortBy] The field that is used to sort the queried data. The value is fixed as CreateTime, which specifies the creation time of products.
  /// [sortOrder] The order in which you want to sort the queried data. Valid values: `Asc`, `Desc`.
  GetEndUserProductsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    String? sortOrder,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      sortBy = pulumi.Input.asOptionalInput<String>(sortBy),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetEndUserProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndUserProductsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      sortBy: map['sortBy'] == null ? null : map['sortBy'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
    );
  }
}

