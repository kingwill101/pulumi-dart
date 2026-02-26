// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy.dart';
import 'predeploy.dart';

/// PhaseConfig represents the configuration for a phase in the custom canary deployment.
class PhaseConfig {
  /// Percentage deployment for the phase.
  final int percentage;

  /// The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final String phaseId;

  /// Optional. Configuration for the postdeploy job of this phase. If this is not configured, there will be no postdeploy job for this phase.
  final Postdeploy? postdeploy;

  /// Optional. Configuration for the predeploy job of this phase. If this is not configured, there will be no predeploy job for this phase.
  final Predeploy? predeploy;

  /// Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  final List<String>? profiles;

  /// Whether to run verify tests after the deployment.
  final bool? verify;

  PhaseConfig({
    required this.percentage,
    required this.phaseId,
    this.postdeploy,
    this.predeploy,
    this.profiles,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentage'] = percentage;
    map['phaseId'] = phaseId;
    final postdeployValue = postdeploy;
    if (postdeployValue != null) {
      map['postdeploy'] = postdeployValue.toMap();
    }
    final predeployValue = predeploy;
    if (predeployValue != null) {
      map['predeploy'] = predeployValue.toMap();
    }
    final profilesValue = profiles;
    if (profilesValue != null) {
      map['profiles'] = profilesValue;
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    return map;
  }

  factory PhaseConfig.fromMap(Map<String, dynamic> map) {
    return PhaseConfig(
      percentage: map['percentage'] as int,
      phaseId: map['phaseId'] as String,
      postdeploy: map['postdeploy'] == null
          ? null
          : Postdeploy.fromMap(
              (map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null
          ? null
          : Predeploy.fromMap(
              (map['predeploy'] as Map).cast<String, dynamic>()),
      profiles: map['profiles'] == null
          ? null
          : (map['profiles'] as List).cast<String>(),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}
