// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderReplay.
class GetFolderReplayArgs4 {
  final Input<String> folderId;
  final Input<String> location;
  final Input<String> replayId;

  GetFolderReplayArgs4({
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

  factory GetFolderReplayArgs4.fromMap(Map<String, dynamic> map) {
    return GetFolderReplayArgs4(
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asInput<String>(map['location']),
      replayId: Input.asInput<String>(map['replayId']),
    );
  }
}
