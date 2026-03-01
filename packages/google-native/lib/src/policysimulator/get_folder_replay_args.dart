// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1_get_folder_replay_args_doc}
/// Arguments for getFolderReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_get_folder_replay_args_doc}
class GetFolderReplayArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetFolderReplayArgs].
  /// [folderId] Required.
  /// [location] Required.
  /// [replayId] Required.
  GetFolderReplayArgs({
    required String folderId,
    required String location,
    required String replayId,
  }) : folderId = pulumi.Input.asInput<String>(folderId),
       location = pulumi.Input.asInput<String>(location),
       replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'location': location,
      'replayId': replayId,
    };
  }

  factory GetFolderReplayArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderReplayArgs(
      folderId: map['folderId'] as String,
      location: map['location'] as String,
      replayId: map['replayId'] as String,
    );
  }
}
