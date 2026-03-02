// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_api_operation_policy_args_doc}
/// The set of arguments for WorkspaceApiOperationPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_operation_policy_args_doc}
class WorkspaceApiOperationPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Format of the policyContent.
  final pulumi.Input<String>? format;
  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationId;
  /// The identifier of the Policy.
  final pulumi.Input<String>? policyId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the Policy as defined by the format.
  final pulumi.Input<String> value;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiOperationPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Format of the policyContent.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the Policy as defined by the format.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiOperationPolicyArgs({
    required this.apiId,
    this.format,
    required this.operationId,
    this.policyId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.value,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'operationId': operationId,
      'policyId': ?policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiOperationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiOperationPolicyArgs(
      apiId: (map['apiId'] as String).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      operationId: (map['operationId'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      value: (map['value'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

