// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_reference_response.dart';
import 'trigger_pipeline_reference_response.dart';

/// Trigger that allows the referenced pipeline to depend on other pipeline runs based on runDimension Name/Value pairs. Upstream pipelines should declare the same runDimension Name and their runs should have the values for those runDimensions. The referenced pipeline run would be triggered if the values for the runDimension match for all upstream pipeline runs.
class ChainingTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Upstream Pipelines.
  final List<PipelineReferenceResponse> dependsOn;
  /// Trigger description.
  final String? description;
  /// Pipeline for which runs are created when all upstream pipelines complete successfully.
  final TriggerPipelineReferenceResponse pipeline;
  /// Run Dimension property that needs to be emitted by upstream pipelines.
  final String runDimension;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final String runtimeState;
  /// Trigger type.
  /// Expected value is 'ChainingTrigger'.
  final String type;

  /// Creates a new [ChainingTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [dependsOn] Upstream Pipelines.
  /// [description] Trigger description.
  /// [pipeline] Pipeline for which runs are created when all upstream pipelines complete successfully.
  /// [runDimension] Run Dimension property that needs to be emitted by upstream pipelines.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [type] Trigger type.
  ChainingTriggerResponse({
    this.annotations,
    required this.dependsOn,
    this.description,
    required this.pipeline,
    required this.runDimension,
    required this.runtimeState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dependsOn': pulumi.Input.encodeList<PipelineReferenceResponse, Map<String, dynamic>>(dependsOn, (value) => value.toMap()),
      'description': ?description,
      'pipeline': pipeline.toMap(),
      'runDimension': runDimension,
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory ChainingTriggerResponse.fromMap(Map<String, dynamic> map) {
    return ChainingTriggerResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      dependsOn: pulumi.Input.decodeList<PipelineReferenceResponse>(map['dependsOn'], (value) => PipelineReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      pipeline: TriggerPipelineReferenceResponse.fromMap((map['pipeline'] as Map).cast<String, dynamic>()),
      runDimension: map['runDimension'] as String,
      runtimeState: map['runtimeState'] as String,
      type: map['type'] as String,
    );
  }
}

