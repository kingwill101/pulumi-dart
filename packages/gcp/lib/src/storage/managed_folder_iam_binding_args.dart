// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_iam_binding_condition.dart';

/// {@template pulumi_storage_managed_folder_iam_binding_managed_folder_iam_binding_args_doc}
/// The set of arguments for ManagedFolderIamBinding.
/// {@endtemplate}
/// {@macro pulumi_storage_managed_folder_iam_binding_managed_folder_iam_binding_args_doc}
class ManagedFolderIamBindingArgs {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<ManagedFolderIamBindingCondition>? condition;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> managedFolder;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  final pulumi.Input<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.storage.ManagedFolderIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [ManagedFolderIamBindingArgs].
  /// [bucket] The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [managedFolder] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  ManagedFolderIamBindingArgs({
    required String bucket,
    ManagedFolderIamBindingCondition? condition,
    required String managedFolder,
    required List<String> members,
    required String role,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        condition =
            pulumi.Input.asOptionalInput<ManagedFolderIamBindingCondition>(
                condition),
        managedFolder = pulumi.Input.asInput<String>(managedFolder),
        members = pulumi.Input.asInput<List<String>>(members),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          ManagedFolderIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['managedFolder'] = managedFolder;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory ManagedFolderIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamBindingArgs(
      bucket: map['bucket'] as String,
      condition: map['condition'] == null
          ? null
          : ManagedFolderIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      managedFolder: map['managedFolder'] as String,
      members: (map['members'] as List).cast<String>(),
      role: map['role'] as String,
    );
  }
}
