// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderIamPolicy.
class GetFolderIamPolicyArgs2 {
  final Input<String> folderId;

  GetFolderIamPolicyArgs2({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetFolderIamPolicyArgs2(
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
