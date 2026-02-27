// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'deploy_parameters.dart';
import 'strategy.dart';

/// Stage specifies a location to which to deploy.
class Stage {
  /// Optional. The deploy parameters to use for the target in this stage.
  final List<DeployParameters>? deployParameters;

  /// Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  final List<String>? profiles;

  /// Optional. The strategy to use for a `Rollout` to this stage.
  final Strategy? strategy;

  /// The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  final String? targetId;

  Stage({
    this.deployParameters,
    this.profiles,
    this.strategy,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deployParametersValue = deployParameters;
    if (deployParametersValue != null) {
      map['deployParameters'] =
          Input.encodeList<DeployParameters, Map<String, dynamic>>(
              deployParametersValue, (value) => value.toMap());
    }
    final profilesValue = profiles;
    if (profilesValue != null) {
      map['profiles'] = profilesValue;
    }
    final strategyValue = strategy;
    if (strategyValue != null) {
      map['strategy'] = strategyValue.toMap();
    }
    final targetIdValue = targetId;
    if (targetIdValue != null) {
      map['targetId'] = targetIdValue;
    }
    return map;
  }

  factory Stage.fromMap(Map<String, dynamic> map) {
    return Stage(
      deployParameters: map['deployParameters'] == null
          ? null
          : Input.decodeList<DeployParameters>(
              map['deployParameters'],
              (value) => DeployParameters.fromMap(
                  (value as Map).cast<String, dynamic>())),
      profiles: map['profiles'] == null
          ? null
          : (map['profiles'] as List).cast<String>(),
      strategy: map['strategy'] == null
          ? null
          : Strategy.fromMap((map['strategy'] as Map).cast<String, dynamic>()),
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
    );
  }
}
