// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_product_args_doc}
class GetProductArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProductArgs].
  /// [catalogName] Name of catalog
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProductArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> productName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      productName = pulumi.Input.asInput<String>(productName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

