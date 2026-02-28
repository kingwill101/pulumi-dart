// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandard {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy?
      postdeploy;

  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy? predeploy;

  /// Whether to verify a deployment.
  final bool? verify;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandard].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  DeliveryPipelineSerialPipelineStageStrategyStandard({
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postdeployValue = postdeploy;
    if (postdeployValue != null) {
      map['postdeploy'] = postdeployValue.toMap();
    }
    final predeployValue = predeploy;
    if (predeployValue != null) {
      map['predeploy'] = predeployValue.toMap();
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandard.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandard(
      postdeploy: map['postdeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy
              .fromMap((map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy
              .fromMap((map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}
