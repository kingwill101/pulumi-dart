// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolder.
class GetFolderArgs {
  final pulumi.Input<String> folderId;

  GetFolderArgs({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderArgs(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
