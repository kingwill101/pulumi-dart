// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFolder.
class GetFolderArgs2 {
  final Input<String> folderId;

  GetFolderArgs2({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderArgs2.fromMap(Map<String, dynamic> map) {
    return GetFolderArgs2(
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
