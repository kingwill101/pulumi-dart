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
    this.ids,
    this.outputFile,
    required this.product,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'product': product,
    };
  }

  factory GetResourceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      product: (map['product'] as String).input(),
    );
  }
}

