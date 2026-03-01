// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_product_args_doc}
class GetProductArgs {
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProductArgs].
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetProductArgs({
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

