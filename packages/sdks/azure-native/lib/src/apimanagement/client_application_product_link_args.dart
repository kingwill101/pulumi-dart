// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_client_application_product_link_args_doc}
/// The set of arguments for ClientApplicationProductLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_client_application_product_link_args_doc}
class ClientApplicationProductLinkArgs {
  /// Client Application identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> clientApplicationId;
  /// Client Application Product Link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? clientApplicationProductLinkId;
  /// The unique resource identifier of the Product.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ClientApplicationProductLinkArgs].
  /// [clientApplicationId] Client Application identifier. Must be unique in the current API Management service instance.
  /// [clientApplicationProductLinkId] Client Application Product Link identifier. Must be unique in the current API Management service instance.
  /// [productId] The unique resource identifier of the Product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ClientApplicationProductLinkArgs({
    required this.clientApplicationId,
    this.clientApplicationProductLinkId,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': clientApplicationId,
      'clientApplicationProductLinkId': ?clientApplicationProductLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ClientApplicationProductLinkArgs.fromMap(Map<String, dynamic> map) {
    return ClientApplicationProductLinkArgs(
      clientApplicationId: (map['clientApplicationId'] as String).input(),
      clientApplicationProductLinkId: map['clientApplicationProductLinkId'] == null ? null : (map['clientApplicationProductLinkId']! as String).input(),
      productId: (map['productId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

