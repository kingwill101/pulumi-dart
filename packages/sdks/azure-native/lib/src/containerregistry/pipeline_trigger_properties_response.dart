// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_source_trigger_properties_response.dart';

class PipelineTriggerPropertiesResponse {
  /// The source trigger properties of the pipeline.
  final PipelineSourceTriggerPropertiesResponse? sourceTrigger;

  /// Creates a new [PipelineTriggerPropertiesResponse].
  /// [sourceTrigger] The source trigger properties of the pipeline.
  PipelineTriggerPropertiesResponse({
    this.sourceTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger': ?sourceTrigger == null ? null : sourceTrigger!.toMap(),
    };
  }

  factory PipelineTriggerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerPropertiesResponse(
      sourceTrigger: map['sourceTrigger'] == null ? null : PipelineSourceTriggerPropertiesResponse.fromMap((map['sourceTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}

