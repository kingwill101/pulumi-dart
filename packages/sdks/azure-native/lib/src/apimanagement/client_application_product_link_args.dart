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
    required pulumi.Output<String> clientApplicationId,
    pulumi.Output<String>? clientApplicationProductLinkId,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      clientApplicationId = pulumi.Input.asInput<String>(clientApplicationId),
      clientApplicationProductLinkId = pulumi.Input.asOptionalInput<String>(clientApplicationProductLinkId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      clientApplicationId: pulumi.Output.create<String>(map['clientApplicationId'] as String),
      clientApplicationProductLinkId: map['clientApplicationProductLinkId'] == null ? null : pulumi.Output.create<String>(map['clientApplicationProductLinkId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

