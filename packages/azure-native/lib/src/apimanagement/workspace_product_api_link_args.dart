// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_product_api_link_args_doc}
/// The set of arguments for WorkspaceProductApiLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_product_api_link_args_doc}
class WorkspaceProductApiLinkArgs {
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
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceProductApiLinkArgs].
  /// [apiId] Full resource Id of an API.
  /// [apiLinkId] Product-API link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceProductApiLinkArgs({
    required String apiId,
    String? apiLinkId,
    required String productId,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      apiLinkId = pulumi.Input.asOptionalInput<String>(apiLinkId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'apiLinkId': ?apiLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceProductApiLinkArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceProductApiLinkArgs(
      apiId: map['apiId'] as String,
      apiLinkId: map['apiLinkId'] == null ? null : map['apiLinkId'] as String,
      productId: map['productId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

