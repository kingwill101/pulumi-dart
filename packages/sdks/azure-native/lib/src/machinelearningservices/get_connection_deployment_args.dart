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
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

