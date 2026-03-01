// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_endpoint_deployment_args_doc}
/// Arguments for getEndpointDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_endpoint_deployment_args_doc}
class GetEndpointDeploymentArgs {
  /// Name of the deployment resource
  final pulumi.Input<String> deploymentName;
  /// Name of the endpoint resource.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEndpointDeploymentArgs].
  /// [deploymentName] Name of the deployment resource
  /// [endpointName] Name of the endpoint resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetEndpointDeploymentArgs({
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

  factory GetEndpointDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointDeploymentArgs(
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

