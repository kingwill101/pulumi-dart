// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_inference_endpoint_args_doc}
/// Arguments for getInferenceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_inference_endpoint_args_doc}
class GetInferenceEndpointArgs {
  /// InferenceEndpoint name.
  final pulumi.Input<String> endpointName;

  /// InferencePool name.
  final pulumi.Input<String> poolName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetInferenceEndpointArgs].
  /// [endpointName] InferenceEndpoint name.
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetInferenceEndpointArgs({
    required this.endpointName,
    required this.poolName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetInferenceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceEndpointArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
