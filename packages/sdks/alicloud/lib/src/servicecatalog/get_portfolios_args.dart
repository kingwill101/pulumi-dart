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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.productId,
    this.scope,
    this.sortBy,
    this.sortOrder,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortBy: (() {
        final guardedValue = map['sortBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
