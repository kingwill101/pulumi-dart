// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudcontrol_get_resource_types_get_resource_types_args_doc}
/// Arguments for getResourceTypes.
/// {@endtemplate}
/// {@macro pulumi_cloudcontrol_get_resource_types_get_resource_types_args_doc}
class GetResourceTypesArgs {
  /// A list of Resource Type IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Product Code.
  final pulumi.Input<String> product;

  /// Creates a new [GetResourceTypesArgs].
  /// [ids] A list of Resource Type IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [product] Product Code.
  GetResourceTypesArgs({
    List<String>? ids,
    String? outputFile,
    required String product,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      product = pulumi.Input.asInput<String>(product);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'product': product,
    };
  }

  factory GetResourceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      product: map['product'] as String,
    );
  }
}

