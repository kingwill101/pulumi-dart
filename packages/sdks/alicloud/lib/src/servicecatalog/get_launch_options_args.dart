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
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.productId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
    );
  }
}

