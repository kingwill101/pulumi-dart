// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_list_product_details_args_doc}
/// Arguments for listProductDetails.
/// {@endtemplate}
/// {@macro pulumi_azurestack_list_product_details_args_doc}
class ListProductDetailsArgs {
  /// Name of the product.
  final pulumi.Input<String> productName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [ListProductDetailsArgs].
  /// [productName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  ListProductDetailsArgs({
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

  factory ListProductDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListProductDetailsArgs(
      productName: pulumi.Input.fromValue(map['productName'] as String),
      registrationName: pulumi.Input.fromValue(map['registrationName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}

