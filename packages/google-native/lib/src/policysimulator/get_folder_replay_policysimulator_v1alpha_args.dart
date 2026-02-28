// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1alpha_get_folder_replay_policysimulator_v1alpha_args_doc}
/// Arguments for getFolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_get_folder_replay_policysimulator_v1alpha_args_doc}
class GetFolderReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetFolderReplayPolicysimulatorV1alphaArgs].
  /// [folderId] Required.
  /// [location] Required.
  /// [replayId] Required.
  GetFolderReplayPolicysimulatorV1alphaArgs({
    required String folderId,
    required String location,
    required String replayId,
  }) :
      folderId = pulumi.Input.asInput<String>(folderId),
      location = pulumi.Input.asInput<String>(location),
      replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'location': location,
      'replayId': replayId,
    };
  }

  factory GetFolderReplayPolicysimulatorV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderReplayPolicysimulatorV1alphaArgs(
      folderId: map['folderId'] as String,
      location: map['location'] as String,
      replayId: map['replayId'] as String,
    );
  }
}

