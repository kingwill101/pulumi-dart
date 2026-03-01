// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_resource_predictions_profile.dart';

/// Stateful profile meaning that the machines will be returned to the pool after running a job.
class Stateful {
  /// How long should the machine be kept around after it ran a workload when there are no stand-by agents. The maximum is one week.
  final String? gracePeriodTimeSpan;
  /// Discriminator property for AgentProfile.
  /// Expected value is 'Stateful'.
  final String kind;
  /// How long should stateful machines be kept around. The maximum is one week.
  final String? maxAgentLifetime;
  /// Defines pool buffer/stand-by agents.
  final dynamic resourcePredictions;
  /// Defines how the pool buffer/stand-by agents is provided.
  final AutomaticResourcePredictionsProfile? resourcePredictionsProfile;

  /// Creates a new [Stateful].
  /// [gracePeriodTimeSpan] How long should the machine be kept around after it ran a workload when there are no stand-by agents. The maximum is one week.
  /// [kind] Discriminator property for AgentProfile.
  /// [maxAgentLifetime] How long should stateful machines be kept around. The maximum is one week.
  /// [resourcePredictions] Defines pool buffer/stand-by agents.
  /// [resourcePredictionsProfile] Defines how the pool buffer/stand-by agents is provided.
  Stateful({
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
      'resourcePredictionsProfile': ?resourcePredictionsProfile == null ? null : resourcePredictionsProfile!.toMap(),
    };
  }

  factory Stateful.fromMap(Map<String, dynamic> map) {
    return Stateful(
      gracePeriodTimeSpan: map['gracePeriodTimeSpan'] == null ? null : map['gracePeriodTimeSpan'] as String,
      kind: map['kind'] as String,
      maxAgentLifetime: map['maxAgentLifetime'] == null ? null : map['maxAgentLifetime'] as String,
      resourcePredictions: map['resourcePredictions'] == null ? null : map['resourcePredictions'],
      resourcePredictionsProfile: map['resourcePredictionsProfile'] == null ? null : AutomaticResourcePredictionsProfile.fromMap((map['resourcePredictionsProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

