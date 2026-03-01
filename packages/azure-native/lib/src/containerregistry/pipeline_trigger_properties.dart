// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_source_trigger_properties.dart';

class PipelineTriggerProperties {
  /// The source trigger properties of the pipeline.
  final PipelineSourceTriggerProperties? sourceTrigger;

  /// Creates a new [PipelineTriggerProperties].
  /// [sourceTrigger] The source trigger properties of the pipeline.
  PipelineTriggerProperties({
    this.sourceTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger': ?sourceTrigger == null ? null : sourceTrigger!.toMap(),
    };
  }

  factory PipelineTriggerProperties.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerProperties(
      sourceTrigger: map['sourceTrigger'] == null ? null : PipelineSourceTriggerProperties.fromMap((map['sourceTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}

