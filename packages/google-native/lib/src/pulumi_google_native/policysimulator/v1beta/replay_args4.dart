// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// The set of arguments for Replay.
class ReplayArgs4 {
  /// The configuration used for the `Replay`.
  final Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final Input<String>? location;
  final Input<String>? project;

  ReplayArgs4({
    required this.config,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<
        GoogleCloudPolicysimulatorV1betaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ReplayArgs4.fromMap(Map<String, dynamic> map) {
    return ReplayArgs4(
      config: Input.asInput<GoogleCloudPolicysimulatorV1betaReplayConfig>(
          map['config']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
