// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_folder_iam_policy_cloudresourcemanager_v3_args_doc}
/// Arguments for getFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_folder_iam_policy_cloudresourcemanager_v3_args_doc}
class GetFolderIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderIamPolicyCloudresourcemanagerV3Args].
  /// [folderId] Required.
  GetFolderIamPolicyCloudresourcemanagerV3Args({
    required String folderId,
  }) : folderId = pulumi.Input.asInput<String>(folderId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderIamPolicyCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetFolderIamPolicyCloudresourcemanagerV3Args(
      folderId: map['folderId'] as String,
    );
  }
}
