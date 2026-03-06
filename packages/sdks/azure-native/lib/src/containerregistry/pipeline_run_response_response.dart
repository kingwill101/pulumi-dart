// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_pipeline_target_properties_response.dart';
import 'import_pipeline_source_properties_response.dart';
import 'pipeline_trigger_descriptor_response.dart';
import 'progress_properties_response.dart';

/// The response properties returned for a pipeline run.
class PipelineRunResponseResponse {
  /// The digest of the tar used to transfer the artifacts.
  final pulumi.Input<String>? catalogDigest;
  /// The time the pipeline run finished.
  final pulumi.Input<String>? finishTime;
  /// The artifacts imported in the pipeline run.
  final pulumi.Input<List<String>>? importedArtifacts;
  /// The detailed error message for the pipeline run in the case of failure.
  final pulumi.Input<String>? pipelineRunErrorMessage;
  /// The current progress of the copy operation.
  final pulumi.Input<ProgressPropertiesResponse>? progress;
  /// The source of the pipeline run.
  final pulumi.Input<ImportPipelineSourcePropertiesResponse>? source;
  /// The time the pipeline run started.
  final pulumi.Input<String>? startTime;
  /// The current status of the pipeline run.
  final pulumi.Input<String>? status;
  /// The target of the pipeline run.
  final pulumi.Input<ExportPipelineTargetPropertiesResponse>? target;
  /// The trigger that caused the pipeline run.
  final pulumi.Input<PipelineTriggerDescriptorResponse>? trigger;

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
  const PipelineRunResponseResponse({
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
      'progress': ?pulumi.Input.mapOptionalInputValue<ProgressPropertiesResponse, Map<String, dynamic>>(progress, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<ImportPipelineSourcePropertiesResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'startTime': ?startTime,
      'status': ?status,
      'target': ?pulumi.Input.mapOptionalInputValue<ExportPipelineTargetPropertiesResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<PipelineTriggerDescriptorResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory PipelineRunResponseResponse.fromMap(Map<String, dynamic> map) {
    return PipelineRunResponseResponse(
      catalogDigest: (() { final guardedValue = map['catalogDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishTime: (() { final guardedValue = map['finishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importedArtifacts: (() { final guardedValue = map['importedArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pipelineRunErrorMessage: (() { final guardedValue = map['pipelineRunErrorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      progress: (() { final guardedValue = map['progress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProgressPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImportPipelineSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportPipelineTargetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineTriggerDescriptorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

