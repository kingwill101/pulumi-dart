// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// {@template pulumi_policysimulator_v1alpha_folder_replay_policysimulator_v1alpha_args_doc}
/// The set of arguments for FolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_folder_replay_policysimulator_v1alpha_args_doc}
class FolderReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;

  /// Creates a new [FolderReplayPolicysimulatorV1alphaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [folderId] Required.
  /// [location] Optional.
  FolderReplayPolicysimulatorV1alphaArgs({
    required GoogleCloudPolicysimulatorV1alphaReplayConfig config,
    required String folderId,
    String? location,
  }) : config =
           pulumi.Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
             config,
           ),
       folderId = pulumi.Input.asInput<String>(folderId),
       location = pulumi.Input.asOptionalInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1alphaReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'folderId': folderId,
      'location': ?location,
    };
  }

  factory FolderReplayPolicysimulatorV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return FolderReplayPolicysimulatorV1alphaArgs(
      config: GoogleCloudPolicysimulatorV1alphaReplayConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      folderId: map['folderId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}
