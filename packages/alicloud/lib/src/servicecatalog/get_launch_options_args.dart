// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_launch_options_get_launch_options_args_doc}
/// Arguments for getLaunchOptions.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_launch_options_get_launch_options_args_doc}
class GetLaunchOptionsArgs {
  /// A list of Launch Option IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by portfolio name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Product ID.
  final pulumi.Input<String> productId;

  /// Creates a new [GetLaunchOptionsArgs].
  /// [ids] A list of Launch Option IDs.
  /// [nameRegex] A regex string to filter results by portfolio name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productId] Product ID.
  GetLaunchOptionsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    required String productId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productId = pulumi.Input.asInput<String>(productId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productId': productId,
    };
  }

  factory GetLaunchOptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productId: map['productId'] as String,
    );
  }
}

