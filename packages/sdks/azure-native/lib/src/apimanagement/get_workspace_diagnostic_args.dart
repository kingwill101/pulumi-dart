// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_diagnostic_args_doc}
/// Arguments for getWorkspaceDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_diagnostic_args_doc}
class GetWorkspaceDiagnosticArgs {
  /// Diagnostic identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> diagnosticId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceDiagnosticArgs].
  /// [diagnosticId] Diagnostic identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const GetWorkspaceDiagnosticArgs({
    required this.diagnosticId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticId': diagnosticId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceDiagnosticArgs(
      diagnosticId: pulumi.Input.fromValue(map['diagnosticId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
