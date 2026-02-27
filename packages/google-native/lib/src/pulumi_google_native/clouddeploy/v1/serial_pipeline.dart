// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'stage.dart';

/// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
class SerialPipeline {
  /// Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  final List<Stage>? stages;

  SerialPipeline({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = Input.encodeList<Stage, Map<String, dynamic>>(
          stagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SerialPipeline.fromMap(Map<String, dynamic> map) {
    return SerialPipeline(
      stages: map['stages'] == null
          ? null
          : Input.decodeList<Stage>(map['stages'],
              (value) => Stage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
