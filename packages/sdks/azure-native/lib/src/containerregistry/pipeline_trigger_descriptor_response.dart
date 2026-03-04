// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_source_trigger_descriptor_response.dart';

class PipelineTriggerDescriptorResponse {
  /// The source trigger that caused the pipeline run.
  final pulumi.Input<PipelineSourceTriggerDescriptorResponse>? sourceTrigger;

  /// Creates a new [PipelineTriggerDescriptorResponse].
  /// [sourceTrigger] The source trigger that caused the pipeline run.
  PipelineTriggerDescriptorResponse({this.sourceTrigger});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineSourceTriggerDescriptorResponse,
            Map<String, dynamic>
          >(sourceTrigger, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerDescriptorResponse(
      sourceTrigger: (() {
        final guardedValue = map['sourceTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineSourceTriggerDescriptorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
