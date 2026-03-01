// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CanarySetting
class CanarySettingResponse {
  /// The ID of the canary deployment.
  final String? deploymentId;
  /// The percent (0-100) of traffic diverted to a canary deployment.
  final int? percentTraffic;
  /// Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  final Map<String, String>? stageVariableOverrides;
  /// A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  final bool? useStageCache;

  /// Creates a new [CanarySettingResponse].
  /// [deploymentId] The ID of the canary deployment.
  /// [percentTraffic] The percent (0-100) of traffic diverted to a canary deployment.
  /// [stageVariableOverrides] Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  /// [useStageCache] A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  CanarySettingResponse({
    this.deploymentId,
    this.percentTraffic,
    this.stageVariableOverrides,
    this.useStageCache,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'percentTraffic': ?percentTraffic,
      'stageVariableOverrides': ?stageVariableOverrides,
      'useStageCache': ?useStageCache,
    };
  }

  factory CanarySettingResponse.fromMap(Map<String, dynamic> map) {
    return CanarySettingResponse(
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      percentTraffic: map['percentTraffic'] == null ? null : map['percentTraffic'] as int,
      stageVariableOverrides: map['stageVariableOverrides'] == null ? null : (map['stageVariableOverrides'] as Map).cast<String, String>(),
      useStageCache: map['useStageCache'] == null ? null : map['useStageCache'] as bool,
    );
  }
}

