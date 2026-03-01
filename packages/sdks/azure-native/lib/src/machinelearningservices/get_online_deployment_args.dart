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

  factory GetOnlineDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetOnlineDeploymentArgs(
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

