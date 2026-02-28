// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1_replay_config.dart';

/// {@template pulumi_policysimulator_v1_folder_replay_args_doc}
/// The set of arguments for FolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_folder_replay_args_doc}
class FolderReplayArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1ReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  /// Creates a new [FolderReplayArgs].
  /// [config] The configuration used for the `Replay`.
  /// [folderId] Required.
  /// [location] Optional.
  FolderReplayArgs({
    required GoogleCloudPolicysimulatorV1ReplayConfig config,
    required String folderId,
    String? location,
  })  : config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1ReplayConfig>(
            config),
        folderId = pulumi.Input.asInput<String>(folderId),
        location = pulumi.Input.asOptionalInput<String>(location);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1ReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory FolderReplayArgs.fromMap(Map<String, dynamic> map) {
    return FolderReplayArgs(
      config: GoogleCloudPolicysimulatorV1ReplayConfig.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      folderId: map['folderId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}
