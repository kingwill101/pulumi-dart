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
  StatefulResponse({
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
      gracePeriodTimeSpan: map['gracePeriodTimeSpan'] == null ? null : (map['gracePeriodTimeSpan'] as String).input(),
      kind: (map['kind'] as String).input(),
      maxAgentLifetime: map['maxAgentLifetime'] == null ? null : (map['maxAgentLifetime'] as String).input(),
      resourcePredictions: map['resourcePredictions'] == null ? null : (map['resourcePredictions']).input(),
      resourcePredictionsProfile: map['resourcePredictionsProfile'] == null ? null : (AutomaticResourcePredictionsProfileResponse.fromMap((map['resourcePredictionsProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

