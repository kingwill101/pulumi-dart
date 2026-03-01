// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_inference_group_args_doc}
/// Arguments for getInferenceGroup.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_inference_group_args_doc}
class GetInferenceGroupArgs {
  /// InferenceGroup name.
  final pulumi.Input<String> groupName;
  /// InferencePool name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetInferenceGroupArgs].
  /// [groupName] InferenceGroup name.
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetInferenceGroupArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetInferenceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

