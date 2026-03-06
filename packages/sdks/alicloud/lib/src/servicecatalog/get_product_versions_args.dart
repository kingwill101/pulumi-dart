// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_product_versions_get_product_versions_args_doc}
/// Arguments for getProductVersions.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_product_versions_get_product_versions_args_doc}
class GetProductVersionsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Product Version IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Product ID
  final pulumi.Input<String> productId;

  /// Creates a new [GetProductVersionsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Product Version IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productId] Product ID
  const GetProductVersionsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productId': productId,
    };
  }

  factory GetProductVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetProductVersionsArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
    );
  }
}

