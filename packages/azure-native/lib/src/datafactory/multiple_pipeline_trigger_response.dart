// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference_response.dart';

/// Base class for all triggers that support one to many model for trigger to pipeline.
class MultiplePipelineTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReferenceResponse>? pipelines;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final String runtimeState;
  /// Trigger type.
  /// Expected value is 'MultiplePipelineTrigger'.
  final String type;

  /// Creates a new [MultiplePipelineTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [pipelines] Pipelines that need to be started.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [type] Trigger type.
  MultiplePipelineTriggerResponse({
    this.annotations,
    this.description,
    this.pipelines,
    required this.runtimeState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReferenceResponse, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory MultiplePipelineTriggerResponse.fromMap(Map<String, dynamic> map) {
    return MultiplePipelineTriggerResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReferenceResponse>(map['pipelines'], (value) => TriggerPipelineReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      runtimeState: map['runtimeState'] as String,
      type: map['type'] as String,
    );
  }
}

