// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_deploy_parameter.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy.dart';

class DeliveryPipelineSerialPipelineStage {
  /// Optional. The deploy parameters to use for the target in this stage.
  final List<DeliveryPipelineSerialPipelineStageDeployParameter>? deployParameters;
  /// Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  final List<String>? profiles;
  /// Optional. The strategy to use for a `Rollout` to this stage.
  final DeliveryPipelineSerialPipelineStageStrategy? strategy;
  /// The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  final String? targetId;

  /// Creates a new [DeliveryPipelineSerialPipelineStage].
  /// [deployParameters] Optional. The deploy parameters to use for the target in this stage.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  /// [strategy] Optional. The strategy to use for a `Rollout` to this stage.
  /// [targetId] The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  DeliveryPipelineSerialPipelineStage({
    this.deployParameters,
    this.profiles,
    this.strategy,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployParameters': ?deployParameters == null ? null : pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageDeployParameter, Map<String, dynamic>>(deployParameters!, (value) => value.toMap()),
      'profiles': ?profiles,
      'strategy': ?strategy == null ? null : strategy!.toMap(),
      'targetId': ?targetId,
    };
  }

  factory DeliveryPipelineSerialPipelineStage.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStage(
      deployParameters: map['deployParameters'] == null ? null : pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageDeployParameter>(map['deployParameters'], (value) => DeliveryPipelineSerialPipelineStageDeployParameter.fromMap((value as Map).cast<String, dynamic>())),
      profiles: map['profiles'] == null ? null : (map['profiles'] as List).cast<String>(),
      strategy: map['strategy'] == null ? null : DeliveryPipelineSerialPipelineStageStrategy.fromMap((map['strategy'] as Map).cast<String, dynamic>()),
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
    );
  }
}

