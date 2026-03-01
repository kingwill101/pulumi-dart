// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_product_policy_args_doc}
/// The set of arguments for WorkspaceProductPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_product_policy_args_doc}
class WorkspaceProductPolicyArgs {
  /// Format of the policyContent.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String>? policyId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the Policy as defined by the format.
  final pulumi.Input<String> value;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceProductPolicyArgs].
  /// [format] Format of the policyContent.
  /// [policyId] The identifier of the Policy.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the Policy as defined by the format.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceProductPolicyArgs({
    pulumi.Output<String>? format,
    pulumi.Output<String>? policyId,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> value,
    required pulumi.Output<String> workspaceId,
  }) :
      format = pulumi.Input.asOptionalInput<String>(format),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asInput<String>(value),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'policyId': ?policyId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceProductPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceProductPolicyArgs(
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

