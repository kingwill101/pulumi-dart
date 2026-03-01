// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_product_args_doc}
class ProductArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Description of the product
  final pulumi.Input<String>? description;
  /// Name of product.
  final pulumi.Input<String>? productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProductArgs].
  /// [catalogName] Name of catalog
  /// [description] Description of the product
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ProductArgs({
    required String catalogName,
    String? description,
    String? productName,
    required String resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      description = pulumi.Input.asOptionalInput<String>(description),
      productName = pulumi.Input.asOptionalInput<String>(productName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'description': ?description,
      'productName': ?productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      catalogName: map['catalogName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

