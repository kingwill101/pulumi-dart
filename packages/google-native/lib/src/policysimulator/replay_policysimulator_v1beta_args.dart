// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta_replay_policysimulator_v1beta_args_doc}
/// The set of arguments for Replay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_replay_policysimulator_v1beta_args_doc}
class ReplayPolicysimulatorV1betaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ReplayPolicysimulatorV1betaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [project] Optional.
  ReplayPolicysimulatorV1betaArgs({
    required GoogleCloudPolicysimulatorV1betaReplayConfig config,
    String? location,
    String? project,
  }) :
      config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1betaReplayConfig>(config),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1betaReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
    };
  }

  factory ReplayPolicysimulatorV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ReplayPolicysimulatorV1betaArgs(
      config: GoogleCloudPolicysimulatorV1betaReplayConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

