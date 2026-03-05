// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_resource_predictions_profile_response.dart';

/// Stateless profile meaning that the machines will be cleaned up after running a job.
class StatelessAgentProfileResponse {
  /// Discriminator property for AgentProfile.
  /// Expected value is 'Stateless'.
  final pulumi.Input<String> kind;
  /// Defines pool buffer/stand-by agents.
  final pulumi.Input<dynamic>? resourcePredictions;
  /// Defines how the pool buffer/stand-by agents is provided.
  final pulumi.Input<AutomaticResourcePredictionsProfileResponse>? resourcePredictionsProfile;

  /// Creates a new [StatelessAgentProfileResponse].
  /// [kind] Discriminator property for AgentProfile.
  /// [resourcePredictions] Defines pool buffer/stand-by agents.
  /// [resourcePredictionsProfile] Defines how the pool buffer/stand-by agents is provided.
  StatelessAgentProfileResponse({
    required this.kind,
    this.resourcePredictions,
    this.resourcePredictionsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'resourcePredictions': ?resourcePredictions,
      'resourcePredictionsProfile': ?pulumi.Input.mapOptionalInputValue<AutomaticResourcePredictionsProfileResponse, Map<String, dynamic>>(resourcePredictionsProfile, (value) => value.toMap()),
    };
  }

  factory StatelessAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return StatelessAgentProfileResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourcePredictions: (() { final guardedValue = map['resourcePredictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourcePredictionsProfile: (() { final guardedValue = map['resourcePredictionsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticResourcePredictionsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

