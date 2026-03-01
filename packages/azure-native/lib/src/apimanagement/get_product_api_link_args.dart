// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_product_api_link_args_doc}
/// Arguments for getProductApiLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_product_api_link_args_doc}
class GetProductApiLinkArgs {
  /// Product-API link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiLinkId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProductApiLinkArgs].
  /// [apiLinkId] Product-API link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetProductApiLinkArgs({
    required String apiLinkId,
    required String productId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiLinkId = pulumi.Input.asInput<String>(apiLinkId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiLinkId': apiLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProductApiLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetProductApiLinkArgs(
      apiLinkId: map['apiLinkId'] as String,
      productId: map['productId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

