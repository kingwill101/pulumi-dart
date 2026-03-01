// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_group_link_args_doc}
/// The set of arguments for ProductGroupLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_group_link_args_doc}
class ProductGroupLinkArgs {
  /// Full resource Id of a group.
  final pulumi.Input<String> groupId;
  /// Product-Group link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? groupLinkId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ProductGroupLinkArgs].
  /// [groupId] Full resource Id of a group.
  /// [groupLinkId] Product-Group link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ProductGroupLinkArgs({
    required String groupId,
    String? groupLinkId,
    required String productId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      groupLinkId = pulumi.Input.asOptionalInput<String>(groupLinkId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'groupLinkId': ?groupLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ProductGroupLinkArgs.fromMap(Map<String, dynamic> map) {
    return ProductGroupLinkArgs(
      groupId: map['groupId'] as String,
      groupLinkId: map['groupLinkId'] == null ? null : map['groupLinkId'] as String,
      productId: map['productId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

