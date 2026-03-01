// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_batch_deployment_args_doc}
/// Arguments for getBatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_batch_deployment_args_doc}
class GetBatchDeploymentArgs {
  /// The identifier for the Batch deployments.
  final pulumi.Input<String> deploymentName;
  /// Endpoint name
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetBatchDeploymentArgs].
  /// [deploymentName] The identifier for the Batch deployments.
  /// [endpointName] Endpoint name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetBatchDeploymentArgs({
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

