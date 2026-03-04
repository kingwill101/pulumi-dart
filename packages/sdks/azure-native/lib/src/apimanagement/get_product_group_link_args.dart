// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_product_group_link_args_doc}
/// Arguments for getProductGroupLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_product_group_link_args_doc}
class GetProductGroupLinkArgs {
  /// Product-Group link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> groupLinkId;

  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProductGroupLinkArgs].
  /// [groupLinkId] Product-Group link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetProductGroupLinkArgs({
    required this.groupLinkId,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupLinkId': groupLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProductGroupLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetProductGroupLinkArgs(
      groupLinkId: pulumi.Input.fromValue(map['groupLinkId'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
