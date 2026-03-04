// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_model_version_label.dart';

/// Input properties used for looking up and filtering WorkspaceModelVersion resources.
class WorkspaceModelVersionState {
  /// The approval status. Valid values:
  /// - Pending: To be determined.
  /// - Approved: Allow to go online.
  /// - Rejected: Online is not allowed.
  final pulumi.Input<String>? approvalStatus;

  /// Other information.
  final pulumi.Input<Map<String, String>>? extraInfo;

  /// The format of the model. Valid values:
  /// - OfflineModel
  /// - SavedModel
  /// - Keras H5
  /// - Frozen Pb
  /// - Caffe Prototxt
  /// - TorchScript
  /// - XGBoost
  /// - PMML
  /// - AlinkModel
  /// - ONNX
  final pulumi.Input<String>? formatType;

  /// The framework of the model. Valid values:
  /// - Pytorch
  /// - XGBoost
  /// - Keras
  /// - Caffe
  /// - Alink
  /// - Xflow
  /// - TensorFlow
  final pulumi.Input<String>? frameworkType;

  /// Describes how to apply to downstream inference services.
  final pulumi.Input<Map<String, String>>? inferenceSpec;

  /// List of model version labels. See `labels` below.
  final pulumi.Input<List<WorkspaceModelVersionLabel>>? labels;

  /// The metrics for the model. The serialized length is limited to 8192.
  final pulumi.Input<Map<String, String>>? metrics;

  /// The model ID.
  final pulumi.Input<String>? modelId;

  /// The extended field. This is a JSON string.
  final pulumi.Input<String>? options;

  /// The source ID.
  final pulumi.Input<String>? sourceId;

  /// The type of the model source. Valid values:
  /// - Custom: Custom.
  /// - PAIFlow:PAI workflow.
  /// - TrainingService:PAI training service.
  final pulumi.Input<String>? sourceType;

  /// The training configurations. Used for fine-tuning and incremental training.
  final pulumi.Input<Map<String, String>>? trainingSpec;

  /// The URI of the model version.
  final pulumi.Input<String>? uri;

  /// The version descriptions.
  final pulumi.Input<String>? versionDescription;

  /// The Model version.
  final pulumi.Input<String>? versionName;

  /// Creates a new [WorkspaceModelVersionState].
  /// [approvalStatus] The approval status. Valid values:
  /// [extraInfo] Other information.
  /// [formatType] The format of the model. Valid values:
  /// [frameworkType] The framework of the model. Valid values:
  /// [inferenceSpec] Describes how to apply to downstream inference services.
  /// [labels] List of model version labels. See `labels` below.
  /// [metrics] The metrics for the model. The serialized length is limited to 8192.
  /// [modelId] The model ID.
  /// [options] The extended field. This is a JSON string.
  /// [sourceId] The source ID.
  /// [sourceType] The type of the model source. Valid values:
  /// [trainingSpec] The training configurations. Used for fine-tuning and incremental training.
  /// [uri] The URI of the model version.
  /// [versionDescription] The version descriptions.
  /// [versionName] The Model version.
  WorkspaceModelVersionState({
    this.approvalStatus,
    this.extraInfo,
    this.formatType,
    this.frameworkType,
    this.inferenceSpec,
    this.labels,
    this.metrics,
    this.modelId,
    this.options,
    this.sourceId,
    this.sourceType,
    this.trainingSpec,
    this.uri,
    this.versionDescription,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalStatus': ?approvalStatus,
      'extraInfo': ?extraInfo,
      'formatType': ?formatType,
      'frameworkType': ?frameworkType,
      'inferenceSpec': ?inferenceSpec,
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkspaceModelVersionLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<
                  WorkspaceModelVersionLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metrics': ?metrics,
      'modelId': ?modelId,
      'options': ?options,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
      'trainingSpec': ?trainingSpec,
      'uri': ?uri,
      'versionDescription': ?versionDescription,
      'versionName': ?versionName,
    };
  }

  factory WorkspaceModelVersionState.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelVersionState(
      approvalStatus: (() {
        final guardedValue = map['approvalStatus'];
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
      formatType: (() {
        final guardedValue = map['formatType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      frameworkType: (() {
        final guardedValue = map['frameworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inferenceSpec: (() {
        final guardedValue = map['inferenceSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkspaceModelVersionLabel>(
            guardedValue,
            (value) => WorkspaceModelVersionLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      modelId: (() {
        final guardedValue = map['modelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceId: (() {
        final guardedValue = map['sourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trainingSpec: (() {
        final guardedValue = map['trainingSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionDescription: (() {
        final guardedValue = map['versionDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionName: (() {
        final guardedValue = map['versionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
