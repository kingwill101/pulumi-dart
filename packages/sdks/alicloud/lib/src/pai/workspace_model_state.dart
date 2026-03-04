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
    this.accessibility,
    this.domain,
    this.extraInfo,
    this.labels,
    this.modelDescription,
    this.modelDoc,
    this.modelName,
    this.modelType,
    this.orderNumber,
    this.origin,
    this.task,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'domain': ?domain,
      'extraInfo': ?extraInfo,
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkspaceModelLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<
                  WorkspaceModelLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accessibility: (() {
        final guardedValue = map['accessibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extraInfo: (() {
        final guardedValue = map['extraInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkspaceModelLabel>(
            guardedValue,
            (value) => WorkspaceModelLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      modelDescription: (() {
        final guardedValue = map['modelDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelDoc: (() {
        final guardedValue = map['modelDoc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelName: (() {
        final guardedValue = map['modelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelType: (() {
        final guardedValue = map['modelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderNumber: (() {
        final guardedValue = map['orderNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      origin: (() {
        final guardedValue = map['origin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      task: (() {
        final guardedValue = map['task'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
