// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'object_iam_policy_bindings_item.dart';

/// The set of arguments for ObjectIamPolicy.
class ObjectIamPolicyArgs {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  final Input<List<ObjectIamPolicyBindingsItem>>? bindings;
  final Input<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  final Input<String>? etag;

  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  final Input<String>? generation;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  final Input<String>? kind;
  final Input<String> object;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  final Input<String>? resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final Input<String>? userProject;

  /// The IAM policy format version.
  final Input<int>? version;

  ObjectIamPolicyArgs({
    this.bindings,
    required this.bucket,
    this.etag,
    this.generation,
    this.kind,
    required this.object,
    this.resourceId,
    this.userProject,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<
              List<ObjectIamPolicyBindingsItem>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => Input.encodeList<ObjectIamPolicyBindingsItem,
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
      bindings: Input.asOptionalInput<List<ObjectIamPolicyBindingsItem>>(
          map['bindings']),
      bucket: Input.asInput<String>(map['bucket']),
      etag: Input.asOptionalInput<String>(map['etag']),
      generation: Input.asOptionalInput<String>(map['generation']),
      kind: Input.asOptionalInput<String>(map['kind']),
      object: Input.asInput<String>(map['object']),
      resourceId: Input.asOptionalInput<String>(map['resourceId']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
