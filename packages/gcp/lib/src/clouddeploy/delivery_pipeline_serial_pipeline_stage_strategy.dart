// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_pipeline_serial_pipeline_stage_strategy_canary.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard.dart';

class DeliveryPipelineSerialPipelineStageStrategy {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final DeliveryPipelineSerialPipelineStageStrategyCanary? canary;
  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final DeliveryPipelineSerialPipelineStageStrategyStandard? standard;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategy].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  DeliveryPipelineSerialPipelineStageStrategy({
    this.canary,
    this.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary': ?canary == null ? null : canary!.toMap(),
      'standard': ?standard == null ? null : standard!.toMap(),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategy.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategy(
      canary: map['canary'] == null ? null : DeliveryPipelineSerialPipelineStageStrategyCanary.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      standard: map['standard'] == null ? null : DeliveryPipelineSerialPipelineStageStrategyStandard.fromMap((map['standard'] as Map).cast<String, dynamic>()),
    );
  }
}

