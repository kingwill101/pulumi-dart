// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_api_operation_policy_args_doc}
/// Arguments for getWorkspaceApiOperationPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_api_operation_policy_args_doc}
class GetWorkspaceApiOperationPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;

  /// Policy Export Format.
  final pulumi.Input<String>? format;

  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationId;

  /// The identifier of the Policy.
  final pulumi.Input<String> policyId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceApiOperationPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Policy Export Format.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceApiOperationPolicyArgs({
    required this.apiId,
    this.format,
    required this.operationId,
    required this.policyId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'operationId': operationId,
      'policyId': policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceApiOperationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceApiOperationPolicyArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
