// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CanarySetting
class CanarySetting {
  /// The ID of the canary deployment.
  final pulumi.Input<String>? deploymentId;
  /// The percent (0-100) of traffic diverted to a canary deployment.
  final pulumi.Input<int>? percentTraffic;
  /// Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  final pulumi.Input<Map<String, String>>? stageVariableOverrides;
  /// A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  final pulumi.Input<bool>? useStageCache;

  /// Creates a new [CanarySetting].
  /// [deploymentId] The ID of the canary deployment.
  /// [percentTraffic] The percent (0-100) of traffic diverted to a canary deployment.
  /// [stageVariableOverrides] Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  /// [useStageCache] A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  const CanarySetting({
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

  factory CanarySetting.fromMap(Map<String, dynamic> map) {
    return CanarySetting(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentTraffic: (() { final guardedValue = map['percentTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stageVariableOverrides: (() { final guardedValue = map['stageVariableOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useStageCache: (() { final guardedValue = map['useStageCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
