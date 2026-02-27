// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// The set of arguments for FolderReplay.
class FolderReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  FolderReplayPolicysimulatorV1alphaArgs({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1alphaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory FolderReplayPolicysimulatorV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return FolderReplayPolicysimulatorV1alphaArgs(
      config:
          pulumi.Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
              map['config']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
    );
  }
}
