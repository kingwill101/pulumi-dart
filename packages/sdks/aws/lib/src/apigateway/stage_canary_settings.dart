// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StageCanarySettings {
  /// ID of the deployment that the canary points to.
  final pulumi.Input<String> deploymentId;

  /// Percent `0.0` - `100.0` of traffic to divert to the canary deployment.
  final pulumi.Input<double>? percentTraffic;

  /// Map of overridden stage `variables` (including new variables) for the canary deployment.
  final pulumi.Input<Map<String, String>>? stageVariableOverrides;

  /// Whether the canary deployment uses the stage cache. Defaults to false.
  final pulumi.Input<bool>? useStageCache;

  /// Creates a new [StageCanarySettings].
  /// [deploymentId] ID of the deployment that the canary points to.
  /// [percentTraffic] Percent `0.0` - `100.0` of traffic to divert to the canary deployment.
  /// [stageVariableOverrides] Map of overridden stage `variables` (including new variables) for the canary deployment.
  /// [useStageCache] Whether the canary deployment uses the stage cache. Defaults to false.
  StageCanarySettings({
    required this.deploymentId,
    this.percentTraffic,
    this.stageVariableOverrides,
    this.useStageCache,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': deploymentId,
      'percentTraffic': ?percentTraffic,
      'stageVariableOverrides': ?stageVariableOverrides,
      'useStageCache': ?useStageCache,
    };
  }

  factory StageCanarySettings.fromMap(Map<String, dynamic> map) {
    return StageCanarySettings(
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      percentTraffic: (() {
        final guardedValue = map['percentTraffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      stageVariableOverrides: (() {
        final guardedValue = map['stageVariableOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      useStageCache: (() {
        final guardedValue = map['useStageCache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
