// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1_replay_config.dart';

/// {@template pulumi_policysimulator_v1_replay_args_doc}
/// The set of arguments for Replay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_replay_args_doc}
class ReplayArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ReplayArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [project] Optional.
  ReplayArgs({
    required GoogleCloudPolicysimulatorV1ReplayConfig config,
    String? location,
    String? project,
  }) : config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1ReplayConfig>(
         config,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1ReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
    };
  }

  factory ReplayArgs.fromMap(Map<String, dynamic> map) {
    return ReplayArgs(
      config: GoogleCloudPolicysimulatorV1ReplayConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
