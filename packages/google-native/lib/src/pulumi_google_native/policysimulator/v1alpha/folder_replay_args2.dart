// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// The set of arguments for FolderReplay.
class FolderReplayArgs2 {
  /// The configuration used for the `Replay`.
  final Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final Input<String> folderId;
  final Input<String>? location;

  FolderReplayArgs2({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<
        GoogleCloudPolicysimulatorV1alphaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory FolderReplayArgs2.fromMap(Map<String, dynamic> map) {
    return FolderReplayArgs2(
      config: Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
          map['config']),
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asOptionalInput<String>(map['location']),
    );
  }
}
