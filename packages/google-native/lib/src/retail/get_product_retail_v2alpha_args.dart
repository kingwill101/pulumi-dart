// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2alpha_get_product_retail_v2alpha_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_retail_v2alpha_get_product_retail_v2alpha_args_doc}
class GetProductRetailV2alphaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProductRetailV2alphaArgs].
  /// [branchId] Required.
  /// [catalogId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetProductRetailV2alphaArgs({
    required String branchId,
    required String catalogId,
    required String location,
    required String productId,
    String? project,
  }) : branchId = pulumi.Input.asInput<String>(branchId),
       catalogId = pulumi.Input.asInput<String>(catalogId),
       location = pulumi.Input.asInput<String>(location),
       productId = pulumi.Input.asInput<String>(productId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'catalogId': catalogId,
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetProductRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetProductRetailV2alphaArgs(
      branchId: map['branchId'] as String,
      catalogId: map['catalogId'] as String,
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
