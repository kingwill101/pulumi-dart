// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_api_link_args_doc}
/// The set of arguments for ProductApiLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_api_link_args_doc}
class ProductApiLinkArgs {
  /// Full resource Id of an API.
  final pulumi.Input<String> apiId;

  /// Product-API link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? apiLinkId;

  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ProductApiLinkArgs].
  /// [apiId] Full resource Id of an API.
  /// [apiLinkId] Product-API link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ProductApiLinkArgs({
    required this.apiId,
    this.apiLinkId,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'apiLinkId': ?apiLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ProductApiLinkArgs.fromMap(Map<String, dynamic> map) {
    return ProductApiLinkArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      apiLinkId: (() {
        final guardedValue = map['apiLinkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
