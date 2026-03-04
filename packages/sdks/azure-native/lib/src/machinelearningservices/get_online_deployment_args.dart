// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_online_deployment_args_doc}
/// Arguments for getOnlineDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_online_deployment_args_doc}
class GetOnlineDeploymentArgs {
  /// Inference Endpoint Deployment name.
  final pulumi.Input<String> deploymentName;

  /// Inference endpoint name.
  final pulumi.Input<String> endpointName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOnlineDeploymentArgs].
  /// [deploymentName] Inference Endpoint Deployment name.
  /// [endpointName] Inference endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetOnlineDeploymentArgs({
    required this.deploymentName,
    required this.endpointName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetOnlineDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetOnlineDeploymentArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
