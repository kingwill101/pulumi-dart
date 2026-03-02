// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_inference_group_delta_models_async_args_doc}
/// Arguments for listInferenceGroupDeltaModelsAsync.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_inference_group_delta_models_async_args_doc}
class ListInferenceGroupDeltaModelsAsyncArgs {
  /// Gets or sets number of delta models to return. Default: -1, means that all will be returned.
  final pulumi.Input<int>? count;
  /// InferenceGroup name.
  final pulumi.Input<String> groupName;
  /// InferencePool name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets skip token for paginated response.
  final pulumi.Input<String>? skipToken;
  /// Gets or sets target base model.
  final pulumi.Input<String>? targetBaseModel;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListInferenceGroupDeltaModelsAsyncArgs].
  /// [count] Gets or sets number of delta models to return. Default: -1, means that all will be returned.
  /// [groupName] InferenceGroup name.
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skipToken] Gets or sets skip token for paginated response.
  /// [targetBaseModel] Gets or sets target base model.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListInferenceGroupDeltaModelsAsyncArgs({
    this.count,
    required this.groupName,
    required this.poolName,
    required this.resourceGroupName,
    this.skipToken,
    this.targetBaseModel,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'groupName': groupName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'targetBaseModel': ?targetBaseModel,
      'workspaceName': workspaceName,
    };
  }

  factory ListInferenceGroupDeltaModelsAsyncArgs.fromMap(Map<String, dynamic> map) {
    return ListInferenceGroupDeltaModelsAsyncArgs(
      count: map['count'] == null ? null : (map['count']! as int).input(),
      groupName: (map['groupName'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken']! as String).input(),
      targetBaseModel: map['targetBaseModel'] == null ? null : (map['targetBaseModel']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

