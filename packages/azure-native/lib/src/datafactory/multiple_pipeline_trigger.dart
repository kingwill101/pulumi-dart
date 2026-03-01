// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference.dart';

/// Base class for all triggers that support one to many model for trigger to pipeline.
class MultiplePipelineTrigger {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReference>? pipelines;
  /// Trigger type.
  /// Expected value is 'MultiplePipelineTrigger'.
  final String type;

  /// Creates a new [MultiplePipelineTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [pipelines] Pipelines that need to be started.
  /// [type] Trigger type.
  MultiplePipelineTrigger({
    this.annotations,
    this.description,
    this.pipelines,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReference, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory MultiplePipelineTrigger.fromMap(Map<String, dynamic> map) {
    return MultiplePipelineTrigger(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReference>(map['pipelines'], (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

