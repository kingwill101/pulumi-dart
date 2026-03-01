// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_inference_pool_status_args_doc}
/// Arguments for getInferencePoolStatus.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_inference_pool_status_args_doc}
class GetInferencePoolStatusArgs {
  /// Name of InferencePool
  final pulumi.Input<String> inferencePoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetInferencePoolStatusArgs].
  /// [inferencePoolName] Name of InferencePool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetInferencePoolStatusArgs({
    required String inferencePoolName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      inferencePoolName = pulumi.Input.asInput<String>(inferencePoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferencePoolName': inferencePoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetInferencePoolStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetInferencePoolStatusArgs(
      inferencePoolName: map['inferencePoolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

