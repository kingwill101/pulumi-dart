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
    pulumi.Output<String>? approvalStatus,
    pulumi.Output<Map<String, String>>? extraInfo,
    pulumi.Output<String>? formatType,
    pulumi.Output<String>? frameworkType,
    pulumi.Output<Map<String, String>>? inferenceSpec,
    pulumi.Output<List<WorkspaceModelVersionLabel>>? labels,
    pulumi.Output<Map<String, String>>? metrics,
    required pulumi.Output<String> modelId,
    pulumi.Output<String>? options,
    pulumi.Output<String>? sourceId,
    pulumi.Output<String>? sourceType,
    pulumi.Output<Map<String, String>>? trainingSpec,
    required pulumi.Output<String> uri,
    pulumi.Output<String>? versionDescription,
    pulumi.Output<String>? versionName,
  }) :
      approvalStatus = pulumi.Input.asOptionalInput<String>(approvalStatus),
      extraInfo = pulumi.Input.asOptionalInput<Map<String, String>>(extraInfo),
      formatType = pulumi.Input.asOptionalInput<String>(formatType),
      frameworkType = pulumi.Input.asOptionalInput<String>(frameworkType),
      inferenceSpec = pulumi.Input.asOptionalInput<Map<String, String>>(inferenceSpec),
      labels = pulumi.Input.asOptionalInput<List<WorkspaceModelVersionLabel>>(labels),
      metrics = pulumi.Input.asOptionalInput<Map<String, String>>(metrics),
      modelId = pulumi.Input.asInput<String>(modelId),
      options = pulumi.Input.asOptionalInput<String>(options),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      trainingSpec = pulumi.Input.asOptionalInput<Map<String, String>>(trainingSpec),
      uri = pulumi.Input.asInput<String>(uri),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

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
      approvalStatus: map['approvalStatus'] == null ? null : pulumi.Output.create<String>(map['approvalStatus'] as String),
      extraInfo: map['extraInfo'] == null ? null : pulumi.Output.create<Map<String, String>>((map['extraInfo'] as Map).cast<String, String>()),
      formatType: map['formatType'] == null ? null : pulumi.Output.create<String>(map['formatType'] as String),
      frameworkType: map['frameworkType'] == null ? null : pulumi.Output.create<String>(map['frameworkType'] as String),
      inferenceSpec: map['inferenceSpec'] == null ? null : pulumi.Output.create<Map<String, String>>((map['inferenceSpec'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<WorkspaceModelVersionLabel>>(pulumi.Input.decodeList<WorkspaceModelVersionLabel>(map['labels'], (value) => WorkspaceModelVersionLabel.fromMap((value as Map).cast<String, dynamic>()))),
      metrics: map['metrics'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metrics'] as Map).cast<String, String>()),
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<String>(map['options'] as String),
      sourceId: map['sourceId'] == null ? null : pulumi.Output.create<String>(map['sourceId'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      trainingSpec: map['trainingSpec'] == null ? null : pulumi.Output.create<Map<String, String>>((map['trainingSpec'] as Map).cast<String, String>()),
      uri: pulumi.Output.create<String>(map['uri'] as String),
      versionDescription: map['versionDescription'] == null ? null : pulumi.Output.create<String>(map['versionDescription'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
    );
  }
}

