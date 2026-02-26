// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolder.
class GetFolderArgs3 {
  final Input<String> folderId;

  GetFolderArgs3({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderArgs3.fromMap(Map<String, dynamic> map) {
    return GetFolderArgs3(
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
