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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
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
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetEndUserProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndUserProductsArgs(
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
