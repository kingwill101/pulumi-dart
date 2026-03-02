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
      deploymentId: (map['deploymentId'] as String).input(),
      percentTraffic: map['percentTraffic'] == null ? null : ((map['percentTraffic'] as double).input()).input(),
      stageVariableOverrides: map['stageVariableOverrides'] == null ? null : (((map['stageVariableOverrides'] as Map).cast<String, String>()).input()).input(),
      useStageCache: map['useStageCache'] == null ? null : ((map['useStageCache'] as bool).input()).input(),
    );
  }
}

