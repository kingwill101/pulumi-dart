// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// The set of arguments for FolderReplay.
class FolderReplayArgs3 {
  /// The configuration used for the `Replay`.
  final Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final Input<String> folderId;
  final Input<String>? location;

  FolderReplayArgs3({
    required this.config,
    required this.folderId,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<
        GoogleCloudPolicysimulatorV1beta1ReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory FolderReplayArgs3.fromMap(Map<String, dynamic> map) {
    return FolderReplayArgs3(
      config: Input.asInput<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(
          map['config']),
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asOptionalInput<String>(map['location']),
    );
  }
}
