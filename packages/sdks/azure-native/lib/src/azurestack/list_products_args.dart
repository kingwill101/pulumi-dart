// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_list_products_args_doc}
/// Arguments for listProducts.
/// {@endtemplate}
/// {@macro pulumi_azurestack_list_products_args_doc}
class ListProductsArgs {
  /// Name of the product.
  final pulumi.Input<String> productName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [ListProductsArgs].
  /// [productName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  const ListProductsArgs({
    required this.productName,
    required this.registrationName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': productName,
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory ListProductsArgs.fromMap(Map<String, dynamic> map) {
    return ListProductsArgs(
      productName: pulumi.Input.fromValue(map['productName'] as String),
      registrationName: pulumi.Input.fromValue(map['registrationName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}
