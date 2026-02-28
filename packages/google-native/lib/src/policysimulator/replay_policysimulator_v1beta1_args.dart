// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta1_replay_policysimulator_v1beta1_args_doc}
/// The set of arguments for Replay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_replay_policysimulator_v1beta1_args_doc}
class ReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ReplayPolicysimulatorV1beta1Args].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [project] Optional.
  ReplayPolicysimulatorV1beta1Args({
    required GoogleCloudPolicysimulatorV1beta1ReplayConfig config,
    String? location,
    String? project,
  })  : config =
            pulumi.Input.asInput<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(
                config),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      config: GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
