// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_source_trigger_descriptor_response.dart';

class PipelineTriggerDescriptorResponse {
  /// The source trigger that caused the pipeline run.
  final PipelineSourceTriggerDescriptorResponse? sourceTrigger;

  /// Creates a new [PipelineTriggerDescriptorResponse].
  /// [sourceTrigger] The source trigger that caused the pipeline run.
  PipelineTriggerDescriptorResponse({
    this.sourceTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger': ?sourceTrigger == null ? null : sourceTrigger!.toMap(),
    };
  }

  factory PipelineTriggerDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerDescriptorResponse(
      sourceTrigger: map['sourceTrigger'] == null ? null : PipelineSourceTriggerDescriptorResponse.fromMap((map['sourceTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}

