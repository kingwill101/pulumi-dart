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
    List<String>? deltaModels,
    required String groupName,
    required String poolName,
    required String resourceGroupName,
    String? targetBaseModel,
    required String workspaceName,
  }) :
      deltaModels = pulumi.Input.asOptionalInput<List<String>>(deltaModels),
      groupName = pulumi.Input.asInput<String>(groupName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetBaseModel = pulumi.Input.asOptionalInput<String>(targetBaseModel),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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

  factory GetInferenceGroupDeltaModelsStatusAsyncArgs.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupDeltaModelsStatusAsyncArgs(
      deltaModels: map['deltaModels'] == null ? null : (map['deltaModels'] as List).cast<String>(),
      groupName: map['groupName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      targetBaseModel: map['targetBaseModel'] == null ? null : map['targetBaseModel'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

