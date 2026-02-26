// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'managed_folder_iam_policy_bindings_item.dart';

/// The set of arguments for ManagedFolderIamPolicy.
class ManagedFolderIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final Input<List<ManagedFolderIamPolicyBindingsItem>>? bindings;
  final Input<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  final Input<String>? etag;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final Input<String>? kind;
  final Input<String> managedFolder;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final Input<String>? resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final Input<String>? userProject;

  /// The IAM policy format version.
  final Input<int>? version;

  ManagedFolderIamPolicyArgs({
    this.bindings,
    required this.bucket,
    this.etag,
    this.kind,
    required this.managedFolder,
    this.resourceId,
    this.userProject,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<
              List<ManagedFolderIamPolicyBindingsItem>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => Input.encodeList<ManagedFolderIamPolicyBindingsItem,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['bucket'] = bucket;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    map['managedFolder'] = managedFolder;
    final resourceIdValue = resourceId;
    if (resourceIdValue != null) {
      map['resourceId'] = resourceIdValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderIamPolicyArgs(
      bindings: Input.asOptionalInput<List<ManagedFolderIamPolicyBindingsItem>>(
          map['bindings']),
      bucket: Input.asInput<String>(map['bucket']),
      etag: Input.asOptionalInput<String>(map['etag']),
      kind: Input.asOptionalInput<String>(map['kind']),
      managedFolder: Input.asInput<String>(map['managedFolder']),
      resourceId: Input.asOptionalInput<String>(map['resourceId']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
