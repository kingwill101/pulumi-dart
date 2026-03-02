// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bss_get_open_api_products_get_open_api_products_args_doc}
/// Arguments for getOpenApiProducts.
/// {@endtemplate}
/// {@macro pulumi_bss_get_open_api_products_get_open_api_products_args_doc}
class GetOpenApiProductsArgs {
  /// A list of product IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetOpenApiProductsArgs].
  /// [ids] A list of product IDs.
  /// [nameRegex] A regex string to filter results by Product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetOpenApiProductsArgs({
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

  factory GetOpenApiProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenApiProductsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

