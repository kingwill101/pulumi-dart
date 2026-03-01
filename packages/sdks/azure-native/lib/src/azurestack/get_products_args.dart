// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_products_args_doc}
/// Arguments for getProducts.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_products_args_doc}
class GetProductsArgs {
  /// Name of the product.
  final pulumi.Input<String> productName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetProductsArgs].
  /// [productName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  GetProductsArgs({
    required pulumi.Output<String> productName,
    required pulumi.Output<String> registrationName,
    required pulumi.Output<String> resourceGroup,
  }) :
      productName = pulumi.Input.asInput<String>(productName),
      registrationName = pulumi.Input.asInput<String>(registrationName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': productName,
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetProductsArgs(
      productName: pulumi.Output.create<String>(map['productName'] as String),
      registrationName: pulumi.Output.create<String>(map['registrationName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

