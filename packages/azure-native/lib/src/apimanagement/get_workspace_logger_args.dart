// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_logger_args_doc}
/// Arguments for getWorkspaceLogger.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_logger_args_doc}
class GetWorkspaceLoggerArgs {
  /// Logger identifier. Must be unique in the API Management service instance.
  final pulumi.Input<String> loggerId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceLoggerArgs].
  /// [loggerId] Logger identifier. Must be unique in the API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceLoggerArgs({
    required String loggerId,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceId,
  }) :
      loggerId = pulumi.Input.asInput<String>(loggerId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerId': loggerId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceLoggerArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceLoggerArgs(
      loggerId: map['loggerId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

