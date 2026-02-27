// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderReplay.
class GetFolderReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> replayId;

  GetFolderReplayPolicysimulatorV1alphaArgs({
    required this.folderId,
    required this.location,
    required this.replayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['location'] = location;
    map['replayId'] = replayId;
    return map;
  }

  factory GetFolderReplayPolicysimulatorV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFolderReplayPolicysimulatorV1alphaArgs(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      location: pulumi.Input.asInput<String>(map['location']),
      replayId: pulumi.Input.asInput<String>(map['replayId']),
    );
  }
}
