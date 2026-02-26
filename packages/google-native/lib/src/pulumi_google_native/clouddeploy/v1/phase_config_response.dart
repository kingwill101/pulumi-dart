// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy_response.dart';
import 'predeploy_response.dart';

/// PhaseConfig represents the configuration for a phase in the custom canary deployment.
class PhaseConfigResponse {
  /// Percentage deployment for the phase.
  final int percentage;

  /// The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final String phaseId;

  /// Optional. Configuration for the postdeploy job of this phase. If this is not configured, there will be no postdeploy job for this phase.
  final PostdeployResponse postdeploy;

  /// Optional. Configuration for the predeploy job of this phase. If this is not configured, there will be no predeploy job for this phase.
  final PredeployResponse predeploy;

  /// Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  final List<String> profiles;

  /// Whether to run verify tests after the deployment.
  final bool verify;

  PhaseConfigResponse({
    required this.percentage,
    required this.phaseId,
    required this.postdeploy,
    required this.predeploy,
    required this.profiles,
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentage'] = percentage;
    map['phaseId'] = phaseId;
    map['postdeploy'] = postdeploy.toMap();
    map['predeploy'] = predeploy.toMap();
    map['profiles'] = profiles;
    map['verify'] = verify;
    return map;
  }

  factory PhaseConfigResponse.fromMap(Map<String, dynamic> map) {
    return PhaseConfigResponse(
      percentage: map['percentage'] as int,
      phaseId: map['phaseId'] as String,
      postdeploy: PostdeployResponse.fromMap(
          (map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: PredeployResponse.fromMap(
          (map['predeploy'] as Map).cast<String, dynamic>()),
      profiles: (map['profiles'] as List).cast<String>(),
      verify: map['verify'] as bool,
    );
  }
}
