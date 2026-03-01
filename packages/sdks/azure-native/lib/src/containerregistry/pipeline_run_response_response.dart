// ignore_for_file: unused_element, unnecessary_cast

import 'export_pipeline_target_properties_response.dart';
import 'import_pipeline_source_properties_response.dart';
import 'pipeline_trigger_descriptor_response.dart';
import 'progress_properties_response.dart';

/// The response properties returned for a pipeline run.
class PipelineRunResponseResponse {
  /// The digest of the tar used to transfer the artifacts.
  final String? catalogDigest;
  /// The time the pipeline run finished.
  final String? finishTime;
  /// The artifacts imported in the pipeline run.
  final List<String>? importedArtifacts;
  /// The detailed error message for the pipeline run in the case of failure.
  final String? pipelineRunErrorMessage;
  /// The current progress of the copy operation.
  final ProgressPropertiesResponse? progress;
  /// The source of the pipeline run.
  final ImportPipelineSourcePropertiesResponse? source;
  /// The time the pipeline run started.
  final String? startTime;
  /// The current status of the pipeline run.
  final String? status;
  /// The target of the pipeline run.
  final ExportPipelineTargetPropertiesResponse? target;
  /// The trigger that caused the pipeline run.
  final PipelineTriggerDescriptorResponse? trigger;

  /// Creates a new [PipelineRunResponseResponse].
  /// [catalogDigest] The digest of the tar used to transfer the artifacts.
  /// [finishTime] The time the pipeline run finished.
  /// [importedArtifacts] The artifacts imported in the pipeline run.
  /// [pipelineRunErrorMessage] The detailed error message for the pipeline run in the case of failure.
  /// [progress] The current progress of the copy operation.
  /// [source] The source of the pipeline run.
  /// [startTime] The time the pipeline run started.
  /// [status] The current status of the pipeline run.
  /// [target] The target of the pipeline run.
  /// [trigger] The trigger that caused the pipeline run.
  PipelineRunResponseResponse({
    this.catalogDigest,
    this.finishTime,
    this.importedArtifacts,
    this.pipelineRunErrorMessage,
    this.progress,
    this.source,
    this.startTime,
    this.status,
    this.target,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogDigest': ?catalogDigest,
      'finishTime': ?finishTime,
      'importedArtifacts': ?importedArtifacts,
      'pipelineRunErrorMessage': ?pipelineRunErrorMessage,
      'progress': ?progress == null ? null : progress!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'startTime': ?startTime,
      'status': ?status,
      'target': ?target == null ? null : target!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
    };
  }

  factory PipelineRunResponseResponse.fromMap(Map<String, dynamic> map) {
    return PipelineRunResponseResponse(
      catalogDigest: map['catalogDigest'] == null ? null : map['catalogDigest'] as String,
      finishTime: map['finishTime'] == null ? null : map['finishTime'] as String,
      importedArtifacts: map['importedArtifacts'] == null ? null : (map['importedArtifacts'] as List).cast<String>(),
      pipelineRunErrorMessage: map['pipelineRunErrorMessage'] == null ? null : map['pipelineRunErrorMessage'] as String,
      progress: map['progress'] == null ? null : ProgressPropertiesResponse.fromMap((map['progress'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : ImportPipelineSourcePropertiesResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      target: map['target'] == null ? null : ExportPipelineTargetPropertiesResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : PipelineTriggerDescriptorResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

