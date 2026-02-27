// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketAccessControl.
class BucketAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;

  /// The entity holding the permission, in one of the following forms:
  /// user-userId
  /// user-email
  /// group-groupId
  /// group-email
  /// domain-domain
  /// project-team-projectId
  /// allUsers
  /// allAuthenticatedUsers
  /// Examples:
  /// The user liz@example.com would be user-liz@example.com.
  /// The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  final pulumi.Input<String> entity;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  final pulumi.Input<String>? role;

  BucketAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    return map;
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      entity: pulumi.Input.asInput<String>(map['entity']),
      role: pulumi.Input.asOptionalInput<String>(map['role']),
    );
  }
}
