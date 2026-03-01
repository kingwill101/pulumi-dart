// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_portfolios_get_portfolios_args_doc}
/// Arguments for getPortfolios.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_portfolios_get_portfolios_args_doc}
class GetPortfoliosArgs {
  /// A list of Portfolio IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The ID of the product.
  final pulumi.Input<String>? productId;
  /// The query scope. Valid values: `Local`(default), `Import`, `All`.
  final pulumi.Input<String>? scope;
  /// The field that is used to sort the queried data. The value is fixed as CreateTime, which specifies the creation time of product portfolios.
  final pulumi.Input<String>? sortBy;
  /// The order in which you want to sort the queried data. Valid values: `Asc`, `Desc`.
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetPortfoliosArgs].
  /// [ids] A list of Portfolio IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [productId] The ID of the product.
  /// [scope] The query scope. Valid values: `Local`(default), `Import`, `All`.
  /// [sortBy] The field that is used to sort the queried data. The value is fixed as CreateTime, which specifies the creation time of product portfolios.
  /// [sortOrder] The order in which you want to sort the queried data. Valid values: `Asc`, `Desc`.
  GetPortfoliosArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? productId,
    String? scope,
    String? sortBy,
    String? sortOrder,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sortBy = pulumi.Input.asOptionalInput<String>(sortBy),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'productId': ?productId,
      'scope': ?scope,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetPortfoliosArgs.fromMap(Map<String, dynamic> map) {
    return GetPortfoliosArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      productId: map['productId'] == null ? null : map['productId'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sortBy: map['sortBy'] == null ? null : map['sortBy'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
    );
  }
}

