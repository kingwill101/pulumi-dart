// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_resource_predictions_profile_response.dart';

/// Stateful profile meaning that the machines will be returned to the pool after running a job.
class StatefulResponse {
  /// How long should the machine be kept around after it ran a workload when there are no stand-by agents. The maximum is one week.
  final pulumi.Input<String>? gracePeriodTimeSpan;
  /// Discriminator property for AgentProfile.
  /// Expected value is 'Stateful'.
  final pulumi.Input<String> kind;
  /// How long should stateful machines be kept around. The maximum is one week.
  final pulumi.Input<String>? maxAgentLifetime;
  /// Defines pool buffer/stand-by agents.
  final pulumi.Input<dynamic>? resourcePredictions;
  /// Defines how the pool buffer/stand-by agents is provided.
  final pulumi.Input<AutomaticResourcePredictionsProfileResponse>? resourcePredictionsProfile;

  /// Creates a new [StatefulResponse].
  /// [gracePeriodTimeSpan] How long should the machine be kept around after it ran a workload when there are no stand-by agents. The maximum is one week.
  /// [kind] Discriminator property for AgentProfile.
  /// [maxAgentLifetime] How long should stateful machines be kept around. The maximum is one week.
  /// [resourcePredictions] Defines pool buffer/stand-by agents.
  /// [resourcePredictionsProfile] Defines how the pool buffer/stand-by agents is provided.
  const StatefulResponse({
    this.gracePeriodTimeSpan,
    required this.kind,
    this.maxAgentLifetime,
    this.resourcePredictions,
    this.resourcePredictionsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodTimeSpan': ?gracePeriodTimeSpan,
      'kind': kind,
      'maxAgentLifetime': ?maxAgentLifetime,
      'resourcePredictions': ?resourcePredictions,
      'resourcePredictionsProfile': ?pulumi.Input.mapOptionalInputValue<AutomaticResourcePredictionsProfileResponse, Map<String, dynamic>>(resourcePredictionsProfile, (value) => value.toMap()),
    };
  }

  factory StatefulResponse.fromMap(Map<String, dynamic> map) {
    return StatefulResponse(
      gracePeriodTimeSpan: (() { final guardedValue = map['gracePeriodTimeSpan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      maxAgentLifetime: (() { final guardedValue = map['maxAgentLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePredictions: (() { final guardedValue = map['resourcePredictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourcePredictionsProfile: (() { final guardedValue = map['resourcePredictionsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticResourcePredictionsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

