// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference_response.dart';

/// Base class for all triggers that support one to many model for trigger to pipeline.
class MultiplePipelineTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Trigger description.
  final pulumi.Input<String?>? description;
  /// Pipelines that need to be started.
  final pulumi.Input<List<TriggerPipelineReferenceResponse>?>? pipelines;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final pulumi.Input<String> runtimeState;
  /// Trigger type.
  /// Expected value is 'MultiplePipelineTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [MultiplePipelineTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [pipelines] Pipelines that need to be started.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [type] Trigger type.
  const MultiplePipelineTriggerResponse({
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
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerPipelineReferenceResponse>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerPipelineReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory MultiplePipelineTriggerResponse.fromMap(Map<String, dynamic> map) {
    return MultiplePipelineTriggerResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelines: (() { final guardedValue = map['pipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerPipelineReferenceResponse>(guardedValue, (value) => TriggerPipelineReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      runtimeState: pulumi.Input.fromValue(map['runtimeState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
