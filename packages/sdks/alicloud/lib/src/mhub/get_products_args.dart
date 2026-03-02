// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mhub_get_products_get_products_args_doc}
/// Arguments for getProducts.
/// {@endtemplate}
/// {@macro pulumi_mhub_get_products_get_products_args_doc}
class GetProductsArgs {
  /// A list of Product IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetProductsArgs].
  /// [ids] A list of Product IDs.
  /// [nameRegex] A regex string to filter results by Product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetProductsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetProductsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

