// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderIamPolicy.
class GetFolderIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String> folderId;

  GetFolderIamPolicyCloudresourcemanagerV3Args({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderIamPolicyCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetFolderIamPolicyCloudresourcemanagerV3Args(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
