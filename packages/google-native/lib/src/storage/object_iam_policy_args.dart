// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_iam_policy_bindings_item.dart';

/// {@template pulumi_storage_v1_object_iam_policy_args_doc}
/// The set of arguments for ObjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_object_iam_policy_args_doc}
class ObjectIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final pulumi.Input<List<ObjectIamPolicyBindingsItem>>? bindings;
  final pulumi.Input<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  final pulumi.Input<String>? etag;

  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  final pulumi.Input<String>? generation;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> object;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final pulumi.Input<String>? resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// The IAM policy format version.
  final pulumi.Input<int>? version;

  /// Creates a new [ObjectIamPolicyArgs].
  /// [bindings] An association between a role, which comes with a set of permissions, and members who may assume that role.
  /// [bucket] Required.
  /// [etag] HTTP 1.1  Entity tag for the policy.
  /// [generation] If present, selects a specific revision of this object (as opposed to the latest version, the default).
  /// [kind] The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  /// [object] Required.
  /// [resourceId] The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  /// [version] The IAM policy format version.
  ObjectIamPolicyArgs({
    List<ObjectIamPolicyBindingsItem>? bindings,
    required String bucket,
    String? etag,
    String? generation,
    String? kind,
    required String object,
    String? resourceId,
    String? userProject,
    int? version,
  })  : bindings =
            pulumi.Input.asOptionalInput<List<ObjectIamPolicyBindingsItem>>(
                bindings),
        bucket = pulumi.Input.asInput<String>(bucket),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        generation = pulumi.Input.asOptionalInput<String>(generation),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        object = pulumi.Input.asInput<String>(object),
        resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
        userProject = pulumi.Input.asOptionalInput<String>(userProject),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<
              List<ObjectIamPolicyBindingsItem>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<ObjectIamPolicyBindingsItem,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['bucket'] = bucket;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    map['object'] = object;
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

  factory ObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectIamPolicyArgs(
      bindings: map['bindings'] == null
          ? null
          : pulumi.Input.decodeList<ObjectIamPolicyBindingsItem>(
              map['bindings'],
              (value) => ObjectIamPolicyBindingsItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      object: map['object'] as String,
      resourceId:
          map['resourceId'] == null ? null : map['resourceId'] as String,
      userProject:
          map['userProject'] == null ? null : map['userProject'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
