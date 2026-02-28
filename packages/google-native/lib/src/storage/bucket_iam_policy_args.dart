// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iam_policy_bindings_item.dart';

/// {@template pulumi_storage_v1_bucket_iam_policy_args_doc}
/// The set of arguments for BucketIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_bucket_iam_policy_args_doc}
class BucketIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final pulumi.Input<List<BucketIamPolicyBindingsItem>>? bindings;
  final pulumi.Input<String> bucket;
  /// HTTP 1.1  Entity tag for the policy.
  final pulumi.Input<String>? etag;
  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final pulumi.Input<String>? kind;
  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final pulumi.Input<String>? resourceId;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;
  /// The IAM policy format version.
  final pulumi.Input<int>? version;

  /// Creates a new [BucketIamPolicyArgs].
  /// [bindings] An association between a role, which comes with a set of permissions, and members who may assume that role.
  /// [bucket] Required.
  /// [etag] HTTP 1.1  Entity tag for the policy.
  /// [kind] The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  /// [resourceId] The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  /// [version] The IAM policy format version.
  BucketIamPolicyArgs({
    List<BucketIamPolicyBindingsItem>? bindings,
    required String bucket,
    String? etag,
    String? kind,
    String? resourceId,
    String? userProject,
    int? version,
  }) :
      bindings = pulumi.Input.asOptionalInput<List<BucketIamPolicyBindingsItem>>(bindings),
      bucket = pulumi.Input.asInput<String>(bucket),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      userProject = pulumi.Input.asOptionalInput<String>(userProject),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BucketIamPolicyBindingsItem>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BucketIamPolicyBindingsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': bucket,
      'etag': ?etag,
      'kind': ?kind,
      'resourceId': ?resourceId,
      'userProject': ?userProject,
      'version': ?version,
    };
  }

  factory BucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BucketIamPolicyArgs(
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<BucketIamPolicyBindingsItem>(map['bindings'], (value) => BucketIamPolicyBindingsItem.fromMap((value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

