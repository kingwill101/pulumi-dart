// ignore_for_file: unused_element, unnecessary_cast

class StageCanarySettings {
  /// ID of the deployment that the canary points to.
  final String deploymentId;

  /// Percent `0.0` - `100.0` of traffic to divert to the canary deployment.
  final double? percentTraffic;

  /// Map of overridden stage <span pulumi-lang-nodejs="`variables`" pulumi-lang-dotnet="`Variables`" pulumi-lang-go="`variables`" pulumi-lang-python="`variables`" pulumi-lang-yaml="`variables`" pulumi-lang-java="`variables`">`variables`</span> (including new variables) for the canary deployment.
  final Map<String, String>? stageVariableOverrides;

  /// Whether the canary deployment uses the stage cache. Defaults to false.
  final bool? useStageCache;

  StageCanarySettings({
    required this.deploymentId,
    this.percentTraffic,
    this.stageVariableOverrides,
    this.useStageCache,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deploymentId'] = deploymentId;
    final percentTrafficValue = percentTraffic;
    if (percentTrafficValue != null) {
      map['percentTraffic'] = percentTrafficValue;
    }
    final stageVariableOverridesValue = stageVariableOverrides;
    if (stageVariableOverridesValue != null) {
      map['stageVariableOverrides'] = stageVariableOverridesValue;
    }
    final useStageCacheValue = useStageCache;
    if (useStageCacheValue != null) {
      map['useStageCache'] = useStageCacheValue;
    }
    return map;
  }

  factory StageCanarySettings.fromMap(Map<String, dynamic> map) {
    return StageCanarySettings(
      deploymentId: map['deploymentId'] as String,
      percentTraffic: map['percentTraffic'] == null
          ? null
          : map['percentTraffic'] as double,
      stageVariableOverrides: map['stageVariableOverrides'] == null
          ? null
          : (map['stageVariableOverrides'] as Map).cast<String, String>(),
      useStageCache:
          map['useStageCache'] == null ? null : map['useStageCache'] as bool,
    );
  }
}
