// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_managed_folder_iam_policy_get_managed_folder_iam_policy_args_doc}
/// Arguments for getManagedFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_managed_folder_iam_policy_get_managed_folder_iam_policy_args_doc}
class GetManagedFolderIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> managedFolder;

  /// Creates a new [GetManagedFolderIamPolicyArgs].
  /// [bucket] Required.
  /// [managedFolder] Required.
  GetManagedFolderIamPolicyArgs({
    required String bucket,
    required String managedFolder,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        managedFolder = pulumi.Input.asInput<String>(managedFolder);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['managedFolder'] = managedFolder;
    return map;
  }

  factory GetManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyArgs(
      bucket: map['bucket'] as String,
      managedFolder: map['managedFolder'] as String,
    );
  }
}
