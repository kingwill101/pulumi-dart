// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ObjectAccessControl.
class ObjectAccessControlArgs {
  /// The name of the bucket.
  final Input<String> bucket;

  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  final Input<String> entity;

  /// The name of the object to apply the access control to.
  final Input<String> object;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final Input<String> role;

  ObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    required this.object,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    map['object'] = object;
    map['role'] = role;
    return map;
  }

  factory ObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      entity: Input.asInput<String>(map['entity']),
      object: Input.asInput<String>(map['object']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
