// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_model_version_label.dart';

/// {@template pulumi_pai_workspace_model_version_workspace_model_version_args_doc}
/// The set of arguments for WorkspaceModelVersion.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_model_version_workspace_model_version_args_doc}
class WorkspaceModelVersionArgs {
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
  final pulumi.Input<String> modelId;
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
  final pulumi.Input<String> uri;
  /// The version descriptions.
  final pulumi.Input<String>? versionDescription;
  /// The Model version.
  final pulumi.Input<String>? versionName;

  /// Creates a new [WorkspaceModelVersionArgs].
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
  WorkspaceModelVersionArgs({
    this.approvalStatus,
    this.extraInfo,
    this.formatType,
    this.frameworkType,
    this.inferenceSpec,
    this.labels,
    this.metrics,
    required this.modelId,
    this.options,
    this.sourceId,
    this.sourceType,
    this.trainingSpec,
    required this.uri,
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
      'labels': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceModelVersionLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<WorkspaceModelVersionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metrics': ?metrics,
      'modelId': modelId,
      'options': ?options,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
      'trainingSpec': ?trainingSpec,
      'uri': uri,
      'versionDescription': ?versionDescription,
      'versionName': ?versionName,
    };
  }

  factory WorkspaceModelVersionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelVersionArgs(
      approvalStatus: map['approvalStatus'] == null ? null : (map['approvalStatus']! as String).input(),
      extraInfo: map['extraInfo'] == null ? null : ((map['extraInfo']! as Map).cast<String, String>()).input(),
      formatType: map['formatType'] == null ? null : (map['formatType']! as String).input(),
      frameworkType: map['frameworkType'] == null ? null : (map['frameworkType']! as String).input(),
      inferenceSpec: map['inferenceSpec'] == null ? null : ((map['inferenceSpec']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<WorkspaceModelVersionLabel>(map['labels']!, (value) => WorkspaceModelVersionLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metrics: map['metrics'] == null ? null : ((map['metrics']! as Map).cast<String, String>()).input(),
      modelId: (map['modelId'] as String).input(),
      options: map['options'] == null ? null : (map['options']! as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId']! as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType']! as String).input(),
      trainingSpec: map['trainingSpec'] == null ? null : ((map['trainingSpec']! as Map).cast<String, String>()).input(),
      uri: (map['uri'] as String).input(),
      versionDescription: map['versionDescription'] == null ? null : (map['versionDescription']! as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName']! as String).input(),
    );
  }
}

