// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_resource_predictions_profile.dart';

/// Stateless profile meaning that the machines will be cleaned up after running a job.
class StatelessAgentProfile {
  /// Discriminator property for AgentProfile.
  /// Expected value is 'Stateless'.
  final String kind;
  /// Defines pool buffer/stand-by agents.
  final dynamic resourcePredictions;
  /// Defines how the pool buffer/stand-by agents is provided.
  final AutomaticResourcePredictionsProfile? resourcePredictionsProfile;

  /// Creates a new [StatelessAgentProfile].
  /// [kind] Discriminator property for AgentProfile.
  /// [resourcePredictions] Defines pool buffer/stand-by agents.
  /// [resourcePredictionsProfile] Defines how the pool buffer/stand-by agents is provided.
  StatelessAgentProfile({
    required this.kind,
    this.resourcePredictions,
    this.resourcePredictionsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'resourcePredictions': ?resourcePredictions,
      'resourcePredictionsProfile': ?resourcePredictionsProfile == null ? null : resourcePredictionsProfile!.toMap(),
    };
  }

  factory StatelessAgentProfile.fromMap(Map<String, dynamic> map) {
    return StatelessAgentProfile(
      kind: map['kind'] as String,
      resourcePredictions: map['resourcePredictions'] == null ? null : map['resourcePredictions'],
      resourcePredictionsProfile: map['resourcePredictionsProfile'] == null ? null : AutomaticResourcePredictionsProfile.fromMap((map['resourcePredictionsProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

