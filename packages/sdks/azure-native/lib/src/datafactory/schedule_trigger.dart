// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_trigger_recurrence.dart';
import 'trigger_pipeline_reference.dart';

/// Trigger that creates pipeline runs periodically, on schedule.
class ScheduleTrigger {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReference>? pipelines;
  /// Recurrence schedule configuration.
  final ScheduleTriggerRecurrence recurrence;
  /// Trigger type.
  /// Expected value is 'ScheduleTrigger'.
  final String type;

  /// Creates a new [ScheduleTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [pipelines] Pipelines that need to be started.
  /// [recurrence] Recurrence schedule configuration.
  /// [type] Trigger type.
  ScheduleTrigger({
    this.annotations,
    this.description,
    this.pipelines,
    required this.recurrence,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReference, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'recurrence': recurrence.toMap(),
      'type': type,
    };
  }

  factory ScheduleTrigger.fromMap(Map<String, dynamic> map) {
    return ScheduleTrigger(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReference>(map['pipelines'], (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>())),
      recurrence: ScheduleTriggerRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

