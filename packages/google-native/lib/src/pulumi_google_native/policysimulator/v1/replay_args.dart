// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_policysimulator_v1_replay_config.dart';

/// The set of arguments for Replay.
class ReplayArgs {
  /// The configuration used for the `Replay`.
  final Input<GoogleCloudPolicysimulatorV1ReplayConfig> config;
  final Input<String>? location;
  final Input<String>? project;

  ReplayArgs({
    required this.config,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<
        GoogleCloudPolicysimulatorV1ReplayConfig,
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

  factory ReplayArgs.fromMap(Map<String, dynamic> map) {
    return ReplayArgs(
      config: Input.asInput<GoogleCloudPolicysimulatorV1ReplayConfig>(
          map['config']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
