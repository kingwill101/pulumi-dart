// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// The set of arguments for Replay.
class ReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  ReplayPolicysimulatorV1beta1Args({
    required this.config,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1beta1ReplayConfig,
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

  factory ReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ReplayPolicysimulatorV1beta1Args(
      config:
          pulumi.Input.asInput<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(
              map['config']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
