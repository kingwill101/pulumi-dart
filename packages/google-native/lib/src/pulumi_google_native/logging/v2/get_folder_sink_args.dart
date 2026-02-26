// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderSink.
class GetFolderSinkArgs {
  final Input<String> folderId;
  final Input<String> sinkId;

  GetFolderSinkArgs({
    required this.folderId,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetFolderSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderSinkArgs(
      folderId: Input.asInput<String>(map['folderId']),
      sinkId: Input.asInput<String>(map['sinkId']),
    );
  }
}
