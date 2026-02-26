// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../delivery_pipeline_serial_pipeline_stage/delivery_pipeline_serial_pipeline_stage.dart';

class DeliveryPipelineSerialPipeline {
  /// Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  final List<DeliveryPipelineSerialPipelineStage>? stages;

  DeliveryPipelineSerialPipeline({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = Input.encodeList<DeliveryPipelineSerialPipelineStage,
          Map<String, dynamic>>(stagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeliveryPipelineSerialPipeline.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipeline(
      stages: map['stages'] == null
          ? null
          : Input.decodeList<DeliveryPipelineSerialPipelineStage>(
              map['stages'],
              (value) => DeliveryPipelineSerialPipelineStage.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
