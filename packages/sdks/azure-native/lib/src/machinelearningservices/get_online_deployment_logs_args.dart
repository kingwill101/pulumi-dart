// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_online_deployment_logs_args_doc}
/// Arguments for getOnlineDeploymentLogs.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_online_deployment_logs_args_doc}
class GetOnlineDeploymentLogsArgs {
  /// The type of container to retrieve logs from.
  final pulumi.Input<String>? containerType;
  /// The name and identifier for the endpoint.
  final pulumi.Input<String> deploymentName;
  /// Inference endpoint name.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The maximum number of lines to tail.
  final pulumi.Input<int>? tail;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOnlineDeploymentLogsArgs].
  /// [containerType] The type of container to retrieve logs from.
  /// [deploymentName] The name and identifier for the endpoint.
  /// [endpointName] Inference endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tail] The maximum number of lines to tail.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetOnlineDeploymentLogsArgs({
    pulumi.Output<String>? containerType,
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? tail,
    required pulumi.Output<String> workspaceName,
  }) :
      containerType = pulumi.Input.asOptionalInput<String>(containerType),
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tail = pulumi.Input.asOptionalInput<int>(tail),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': ?containerType,
      'deploymentName': deploymentName,
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'tail': ?tail,
      'workspaceName': workspaceName,
    };
  }

  factory GetOnlineDeploymentLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetOnlineDeploymentLogsArgs(
      containerType: map['containerType'] == null ? null : pulumi.Output.create<String>(map['containerType'] as String),
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tail: map['tail'] == null ? null : pulumi.Output.create<int>(map['tail'] as int),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

