// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_connection_deployment_args_doc}
/// Arguments for getConnectionDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_connection_deployment_args_doc}
class GetConnectionDeploymentArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// Name of the deployment resource
  final pulumi.Input<String> deploymentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetConnectionDeploymentArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [deploymentName] Name of the deployment resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetConnectionDeploymentArgs({
    required this.connectionName,
    required this.deploymentName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'deploymentName': deploymentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetConnectionDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionDeploymentArgs(
      connectionName: (map['connectionName'] as String).input(),
      deploymentName: (map['deploymentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

