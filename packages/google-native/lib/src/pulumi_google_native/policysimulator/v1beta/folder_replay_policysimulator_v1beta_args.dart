// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// The set of arguments for FolderReplay.
class FolderReplayPolicysimulatorV1betaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  FolderReplayPolicysimulatorV1betaArgs({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1betaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory FolderReplayPolicysimulatorV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return FolderReplayPolicysimulatorV1betaArgs(
      config:
          pulumi.Input.asInput<GoogleCloudPolicysimulatorV1betaReplayConfig>(
              map['config']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
    );
  }
}
