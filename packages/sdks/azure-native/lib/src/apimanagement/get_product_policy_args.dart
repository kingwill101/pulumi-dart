// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_product_policy_args_doc}
/// Arguments for getProductPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_product_policy_args_doc}
class GetProductPolicyArgs {
  /// Policy Export Format.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String> policyId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProductPolicyArgs].
  /// [format] Policy Export Format.
  /// [policyId] The identifier of the Policy.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GetProductPolicyArgs({
    this.format,
    required this.policyId,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'policyId': policyId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProductPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProductPolicyArgs(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
