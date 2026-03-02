// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_resource_predictions_profile.dart';

/// Stateless profile meaning that the machines will be cleaned up after running a job.
class StatelessAgentProfile {
  /// Discriminator property for AgentProfile.
  /// Expected value is 'Stateless'.
  final pulumi.Input<String> kind;
  /// Defines pool buffer/stand-by agents.
  final pulumi.Input<dynamic>? resourcePredictions;
  /// Defines how the pool buffer/stand-by agents is provided.
  final pulumi.Input<AutomaticResourcePredictionsProfile>? resourcePredictionsProfile;

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
      'resourcePredictionsProfile': ?pulumi.Input.mapOptionalInputValue<AutomaticResourcePredictionsProfile, Map<String, dynamic>>(resourcePredictionsProfile, (value) => value.toMap()),
    };
  }

  factory StatelessAgentProfile.fromMap(Map<String, dynamic> map) {
    return StatelessAgentProfile(
      kind: (map['kind'] as String).input(),
      resourcePredictions: map['resourcePredictions'] == null ? null : (map['resourcePredictions']).input(),
      resourcePredictionsProfile: map['resourcePredictionsProfile'] == null ? null : (AutomaticResourcePredictionsProfile.fromMap((map['resourcePredictionsProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

