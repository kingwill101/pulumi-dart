// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderSink.
class GetFolderSinkArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> sinkId;

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
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      sinkId: pulumi.Input.asInput<String>(map['sinkId']),
    );
  }
}
