// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_inference_group_delta_models_status_async_args_doc}
/// Arguments for getInferenceGroupDeltaModelsStatusAsync.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_inference_group_delta_models_status_async_args_doc}
class GetInferenceGroupDeltaModelsStatusAsyncArgs {
  /// Gets or sets collection of delta models to retrieve status for.
  final pulumi.Input<List<String>>? deltaModels;

  /// InferenceGroup name.
  final pulumi.Input<String> groupName;

  /// InferencePool name.
  final pulumi.Input<String> poolName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Gets or sets target base model.
  final pulumi.Input<String>? targetBaseModel;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetInferenceGroupDeltaModelsStatusAsyncArgs].
  /// [deltaModels] Gets or sets collection of delta models to retrieve status for.
  /// [groupName] InferenceGroup name.
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetBaseModel] Gets or sets target base model.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetInferenceGroupDeltaModelsStatusAsyncArgs({
    this.deltaModels,
    required this.groupName,
    required this.poolName,
    required this.resourceGroupName,
    this.targetBaseModel,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaModels': ?deltaModels,
      'groupName': groupName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'targetBaseModel': ?targetBaseModel,
      'workspaceName': workspaceName,
    };
  }

  factory GetInferenceGroupDeltaModelsStatusAsyncArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInferenceGroupDeltaModelsStatusAsyncArgs(
      deltaModels: (() {
        final guardedValue = map['deltaModels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      targetBaseModel: (() {
        final guardedValue = map['targetBaseModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
