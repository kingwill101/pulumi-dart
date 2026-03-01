// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_model_label.dart';

/// Input properties used for looking up and filtering WorkspaceModel resources.
class WorkspaceModelState {
  /// The visibility of the model in the workspace. Default value: `PRIVATE`. Valid values:
  /// - `PRIVATE`: In this workspace, it is only visible to you and the administrator.
  /// - `PUBLIC`: In this workspace, it is visible to everyone.
  final pulumi.Input<String>? accessibility;
  /// The domain of the model. Describe the domain in which the model solves the problem. For example: nlp (natural language processing), cv (computer vision), etc.
  final pulumi.Input<String>? domain;
  /// Other information about the model.
  final pulumi.Input<Map<String, String>>? extraInfo;
  /// A list of tags. See `labels` below.
  final pulumi.Input<List<WorkspaceModelLabel>>? labels;
  /// The model description, used to distinguish different models.
  final pulumi.Input<String>? modelDescription;
  /// The documentation of the model.
  final pulumi.Input<String>? modelDoc;
  /// The name of the model. The name must be 1 to 127 characters in length.
  final pulumi.Input<String>? modelName;
  /// The model type. Example: Checkpoint or LoRA.
  final pulumi.Input<String>? modelType;
  /// The sequence number of the model. Can be used for custom sorting.
  final pulumi.Input<int>? orderNumber;
  /// The source of the model. The community or organization to which the source model belongs, such as ModelScope or HuggingFace.
  final pulumi.Input<String>? origin;
  /// The task of the model. Describes the specific problem that the model solves. Example: text-classification.
  final pulumi.Input<String>? task;
  /// The ID of the workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceModelState].
  /// [accessibility] The visibility of the model in the workspace. Default value: `PRIVATE`. Valid values:
  /// [domain] The domain of the model. Describe the domain in which the model solves the problem. For example: nlp (natural language processing), cv (computer vision), etc.
  /// [extraInfo] Other information about the model.
  /// [labels] A list of tags. See `labels` below.
  /// [modelDescription] The model description, used to distinguish different models.
  /// [modelDoc] The documentation of the model.
  /// [modelName] The name of the model. The name must be 1 to 127 characters in length.
  /// [modelType] The model type. Example: Checkpoint or LoRA.
  /// [orderNumber] The sequence number of the model. Can be used for custom sorting.
  /// [origin] The source of the model. The community or organization to which the source model belongs, such as ModelScope or HuggingFace.
  /// [task] The task of the model. Describes the specific problem that the model solves. Example: text-classification.
  /// [workspaceId] The ID of the workspace.
  WorkspaceModelState({
    pulumi.Output<String>? accessibility,
    pulumi.Output<String>? domain,
    pulumi.Output<Map<String, String>>? extraInfo,
    pulumi.Output<List<WorkspaceModelLabel>>? labels,
    pulumi.Output<String>? modelDescription,
    pulumi.Output<String>? modelDoc,
    pulumi.Output<String>? modelName,
    pulumi.Output<String>? modelType,
    pulumi.Output<int>? orderNumber,
    pulumi.Output<String>? origin,
    pulumi.Output<String>? task,
    pulumi.Output<String>? workspaceId,
  }) :
      accessibility = pulumi.Input.asOptionalInput<String>(accessibility),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      extraInfo = pulumi.Input.asOptionalInput<Map<String, String>>(extraInfo),
      labels = pulumi.Input.asOptionalInput<List<WorkspaceModelLabel>>(labels),
      modelDescription = pulumi.Input.asOptionalInput<String>(modelDescription),
      modelDoc = pulumi.Input.asOptionalInput<String>(modelDoc),
      modelName = pulumi.Input.asOptionalInput<String>(modelName),
      modelType = pulumi.Input.asOptionalInput<String>(modelType),
      orderNumber = pulumi.Input.asOptionalInput<int>(orderNumber),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      task = pulumi.Input.asOptionalInput<String>(task),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'domain': ?domain,
      'extraInfo': ?extraInfo,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceModelLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<WorkspaceModelLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelDescription': ?modelDescription,
      'modelDoc': ?modelDoc,
      'modelName': ?modelName,
      'modelType': ?modelType,
      'orderNumber': ?orderNumber,
      'origin': ?origin,
      'task': ?task,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceModelState.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelState(
      accessibility: map['accessibility'] == null ? null : pulumi.Output.create<String>(map['accessibility'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      extraInfo: map['extraInfo'] == null ? null : pulumi.Output.create<Map<String, String>>((map['extraInfo'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<WorkspaceModelLabel>>(pulumi.Input.decodeList<WorkspaceModelLabel>(map['labels'], (value) => WorkspaceModelLabel.fromMap((value as Map).cast<String, dynamic>()))),
      modelDescription: map['modelDescription'] == null ? null : pulumi.Output.create<String>(map['modelDescription'] as String),
      modelDoc: map['modelDoc'] == null ? null : pulumi.Output.create<String>(map['modelDoc'] as String),
      modelName: map['modelName'] == null ? null : pulumi.Output.create<String>(map['modelName'] as String),
      modelType: map['modelType'] == null ? null : pulumi.Output.create<String>(map['modelType'] as String),
      orderNumber: map['orderNumber'] == null ? null : pulumi.Output.create<int>(map['orderNumber'] as int),
      origin: map['origin'] == null ? null : pulumi.Output.create<String>(map['origin'] as String),
      task: map['task'] == null ? null : pulumi.Output.create<String>(map['task'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

