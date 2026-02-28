// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_default_object_access_control_default_object_access_control_args_doc}
/// The set of arguments for DefaultObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_default_object_access_control_default_object_access_control_args_doc}
class DefaultObjectAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  final pulumi.Input<String> entity;
  /// The name of the object, if applied to an object.
  final pulumi.Input<String>? object;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final pulumi.Input<String> role;

  /// Creates a new [DefaultObjectAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [object] The name of the object, if applied to an object.
  /// [role] The access permission for the entity.
  DefaultObjectAccessControlArgs({
    required String bucket,
    required String entity,
    String? object,
    required String role,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      object = pulumi.Input.asOptionalInput<String>(object),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'object': ?object,
      'role': role,
    };
  }

  factory DefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlArgs(
      bucket: map['bucket'] as String,
      entity: map['entity'] as String,
      object: map['object'] == null ? null : map['object'] as String,
      role: map['role'] as String,
    );
  }
}

