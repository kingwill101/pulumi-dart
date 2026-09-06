// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_online_deployment_logs_args_doc}
/// Arguments for getOnlineDeploymentLogs.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_online_deployment_logs_args_doc}
class GetOnlineDeploymentLogsArgs {
  /// The type of container to retrieve logs from.
  final pulumi.Input<dynamic>? containerType;
  /// Inference Endpoint Deployment name.
  final pulumi.Input<String> deploymentName;
  /// Online Endpoint name.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The maximum number of lines to tail.
  final pulumi.Input<int?>? tail;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOnlineDeploymentLogsArgs].
  /// [containerType] The type of container to retrieve logs from.
  /// [deploymentName] Inference Endpoint Deployment name.
  /// [endpointName] Online Endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tail] The maximum number of lines to tail.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetOnlineDeploymentLogsArgs({
    pulumi.Input<dynamic>? containerType,
    required this.deploymentName,
    required this.endpointName,
    required this.resourceGroupName,
    this.tail,
    required this.workspaceName,
  }) : containerType = containerType ?? pulumi.Input.fromValue('InferenceServer');

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
      containerType: (() { final guardedValue = map['containerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tail: (() { final guardedValue = map['tail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
