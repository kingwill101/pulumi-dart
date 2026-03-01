// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_product_args_doc}
class GetProductArgs {
  /// Name of the product.
  final pulumi.Input<String> productName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetProductArgs].
  /// [productName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  GetProductArgs({
    required String productName,
    required String registrationName,
    required String resourceGroup,
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

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      productName: map['productName'] as String,
      registrationName: map['registrationName'] as String,
      resourceGroup: map['resourceGroup'] as String,
    );
  }
}

