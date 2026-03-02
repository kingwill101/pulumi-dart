// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CanarySetting
class CanarySettingResponse {
  /// The ID of the canary deployment.
  final pulumi.Input<String>? deploymentId;
  /// The percent (0-100) of traffic diverted to a canary deployment.
  final pulumi.Input<int>? percentTraffic;
  /// Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  final pulumi.Input<Map<String, String>>? stageVariableOverrides;
  /// A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  final pulumi.Input<bool>? useStageCache;

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
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId'] as String).input(),
      percentTraffic: map['percentTraffic'] == null ? null : (map['percentTraffic'] as int).input(),
      stageVariableOverrides: map['stageVariableOverrides'] == null ? null : ((map['stageVariableOverrides'] as Map).cast<String, String>()).input(),
      useStageCache: map['useStageCache'] == null ? null : (map['useStageCache'] as bool).input(),
    );
  }
}

