// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_source_trigger_properties.dart';

class PipelineTriggerProperties {
  /// The source trigger properties of the pipeline.
  final pulumi.Input<PipelineSourceTriggerProperties>? sourceTrigger;

  /// Creates a new [PipelineTriggerProperties].
  /// [sourceTrigger] The source trigger properties of the pipeline.
  const PipelineTriggerProperties({
    this.sourceTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTrigger': ?pulumi.Input.mapOptionalInputValue<PipelineSourceTriggerProperties, Map<String, dynamic>>(sourceTrigger, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerProperties.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerProperties(
      sourceTrigger: (() { final guardedValue = map['sourceTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSourceTriggerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

