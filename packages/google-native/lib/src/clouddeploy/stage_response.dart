// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_parameters_response.dart';
import 'strategy_response.dart';

/// Stage specifies a location to which to deploy.
class StageResponse {
  /// Optional. The deploy parameters to use for the target in this stage.
  final List<DeployParametersResponse> deployParameters;

  /// Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  final List<String> profiles;

  /// Optional. The strategy to use for a `Rollout` to this stage.
  final StrategyResponse strategy;

  /// The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  final String targetId;

  /// Creates a new [StageResponse].
  /// [deployParameters] Optional. The deploy parameters to use for the target in this stage.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  /// [strategy] Optional. The strategy to use for a `Rollout` to this stage.
  /// [targetId] The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  StageResponse({
    required this.deployParameters,
    required this.profiles,
    required this.strategy,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployParameters'] =
        pulumi.Input.encodeList<DeployParametersResponse, Map<String, dynamic>>(
            deployParameters, (value) => value.toMap());
    map['profiles'] = profiles;
    map['strategy'] = strategy.toMap();
    map['targetId'] = targetId;
    return map;
  }

  factory StageResponse.fromMap(Map<String, dynamic> map) {
    return StageResponse(
      deployParameters: pulumi.Input.decodeList<DeployParametersResponse>(
          map['deployParameters'],
          (value) => DeployParametersResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      profiles: (map['profiles'] as List).cast<String>(),
      strategy: StrategyResponse.fromMap(
          (map['strategy'] as Map).cast<String, dynamic>()),
      targetId: map['targetId'] as String,
    );
  }
}
