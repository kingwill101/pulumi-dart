// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultObjectAccessControl.
class DefaultObjectAccessControlArgs {
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

  /// The name of the object, if applied to an object.
  final Input<String>? object;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final Input<String> role;

  DefaultObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.object,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    final objectValue = object;
    if (objectValue != null) {
      map['object'] = objectValue;
    }
    map['role'] = role;
    return map;
  }

  factory DefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      entity: Input.asInput<String>(map['entity']),
      object: Input.asOptionalInput<String>(map['object']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
