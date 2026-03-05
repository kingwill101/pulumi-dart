// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_reference.dart';
import 'trigger_pipeline_reference.dart';

/// Trigger that allows the referenced pipeline to depend on other pipeline runs based on runDimension Name/Value pairs. Upstream pipelines should declare the same runDimension Name and their runs should have the values for those runDimensions. The referenced pipeline run would be triggered if the values for the runDimension match for all upstream pipeline runs.
class ChainingTrigger {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Upstream Pipelines.
  final pulumi.Input<List<PipelineReference>> dependsOn;
  /// Trigger description.
  final pulumi.Input<String>? description;
  /// Pipeline for which runs are created when all upstream pipelines complete successfully.
  final pulumi.Input<TriggerPipelineReference> pipeline;
  /// Run Dimension property that needs to be emitted by upstream pipelines.
  final pulumi.Input<String> runDimension;
  /// Trigger type.
  /// Expected value is 'ChainingTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [ChainingTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [dependsOn] Upstream Pipelines.
  /// [description] Trigger description.
  /// [pipeline] Pipeline for which runs are created when all upstream pipelines complete successfully.
  /// [runDimension] Run Dimension property that needs to be emitted by upstream pipelines.
  /// [type] Trigger type.
  ChainingTrigger({
    this.annotations,
    required this.dependsOn,
    this.description,
    required this.pipeline,
    required this.runDimension,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dependsOn': pulumi.Input.mapInputValue<List<PipelineReference>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<PipelineReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'pipeline': pulumi.Input.mapInputValue<TriggerPipelineReference, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'runDimension': runDimension,
      'type': type,
    };
  }

  factory ChainingTrigger.fromMap(Map<String, dynamic> map) {
    return ChainingTrigger(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      dependsOn: pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineReference>(map['dependsOn']!, (value) => PipelineReference.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: pulumi.Input.fromValue(TriggerPipelineReference.fromMap((map['pipeline']! as Map).cast<String, dynamic>())),
      runDimension: pulumi.Input.fromValue(map['runDimension'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

