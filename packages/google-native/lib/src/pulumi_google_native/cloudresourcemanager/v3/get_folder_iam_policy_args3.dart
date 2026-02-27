// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFolderIamPolicy.
class GetFolderIamPolicyArgs3 {
  final Input<String> folderId;

  GetFolderIamPolicyArgs3({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetFolderIamPolicyArgs3(
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
