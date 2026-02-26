// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderIamPolicy.
class GetFolderIamPolicyArgs {
  final Input<String> folderId;

  GetFolderIamPolicyArgs({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderIamPolicyArgs(
      folderId: Input.asInput<String>(map['folderId']),
    );
  }
}
