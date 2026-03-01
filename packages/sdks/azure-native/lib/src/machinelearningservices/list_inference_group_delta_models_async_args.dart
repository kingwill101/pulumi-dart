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
    pulumi.Output<int>? count,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skipToken,
    pulumi.Output<String>? targetBaseModel,
    required pulumi.Output<String> workspaceName,
  }) :
      count = pulumi.Input.asOptionalInput<int>(count),
      groupName = pulumi.Input.asInput<String>(groupName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      targetBaseModel = pulumi.Input.asOptionalInput<String>(targetBaseModel),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
      targetBaseModel: map['targetBaseModel'] == null ? null : pulumi.Output.create<String>(map['targetBaseModel'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

