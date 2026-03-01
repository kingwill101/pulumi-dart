// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_group_args_doc}
/// The set of arguments for ProductGroup.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_group_args_doc}
class ProductGroupArgs {
  /// Group identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? groupId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ProductGroupArgs].
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ProductGroupArgs({
    pulumi.Output<String>? groupId,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ProductGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProductGroupArgs(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

