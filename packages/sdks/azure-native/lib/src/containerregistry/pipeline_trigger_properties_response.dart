// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_source_trigger_properties_response.dart';

class PipelineTriggerPropertiesResponse {
  /// The source trigger properties of the pipeline.
  final pulumi.Input<PipelineSourceTriggerPropertiesResponse?>? sourceTrigger;

  /// Creates a new [PipelineTriggerPropertiesResponse].
  /// [sourceTrigger] The source trigger properties of the pipeline.
  const PipelineTriggerPropertiesResponse({
    this.sourceTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger': ?pulumi.Input.mapOptionalInputValue<PipelineSourceTriggerPropertiesResponse, Map<String, dynamic>>(sourceTrigger, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerPropertiesResponse(
      sourceTrigger: (() { final guardedValue = map['sourceTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSourceTriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
