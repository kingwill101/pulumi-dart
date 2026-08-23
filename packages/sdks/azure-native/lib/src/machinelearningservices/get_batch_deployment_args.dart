// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_batch_deployment_args_doc}
/// Arguments for getBatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_batch_deployment_args_doc}
class GetBatchDeploymentArgs {
  /// The identifier for the Batch deployments.
  final pulumi.Input<String> deploymentName;
  /// Name for the Batch Endpoint.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetBatchDeploymentArgs].
  /// [deploymentName] The identifier for the Batch deployments.
  /// [endpointName] Name for the Batch Endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const GetBatchDeploymentArgs({
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

  factory GetBatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchDeploymentArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
