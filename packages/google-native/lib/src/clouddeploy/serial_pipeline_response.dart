// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_response.dart';

/// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
class SerialPipelineResponse {
  /// Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  final List<StageResponse> stages;

  /// Creates a new [SerialPipelineResponse].
  /// [stages] Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  SerialPipelineResponse({
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stages'] =
        pulumi.Input.encodeList<StageResponse, Map<String, dynamic>>(
            stages, (value) => value.toMap());
    return map;
  }

  factory SerialPipelineResponse.fromMap(Map<String, dynamic> map) {
    return SerialPipelineResponse(
      stages: pulumi.Input.decodeList<StageResponse>(
          map['stages'],
          (value) =>
              StageResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
