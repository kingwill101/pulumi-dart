// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_object_access_control_project_team.dart';

/// {@template pulumi_storage_v1_default_object_access_control_args_doc}
/// The set of arguments for DefaultObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_default_object_access_control_args_doc}
class DefaultObjectAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The domain associated with the entity, if any.
  final pulumi.Input<String>? domain;
  /// The email address associated with the entity, if any.
  final pulumi.Input<String>? email;
  /// The entity holding the permission, in one of the following forms:
  /// - user-userId
  /// - user-email
  /// - group-groupId
  /// - group-email
  /// - domain-domain
  /// - project-team-projectId
  /// - allUsers
  /// - allAuthenticatedUsers Examples:
  /// - The user liz@example.com would be user-liz@example.com.
  /// - The group example@googlegroups.com would be group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
  final pulumi.Input<String>? entity;
  /// The ID for the entity, if any.
  final pulumi.Input<String>? entityId;
  /// HTTP 1.1 Entity tag for the access-control entry.
  final pulumi.Input<String>? etag;
  /// The content generation of the object, if applied to an object.
  final pulumi.Input<String>? generation;
  /// The ID of the access-control entry.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final pulumi.Input<String>? kind;
  /// The name of the object, if applied to an object.
  final pulumi.Input<String>? object;
  /// The project team associated with the entity, if any.
  final pulumi.Input<DefaultObjectAccessControlProjectTeam>? projectTeam;
  /// The access permission for the entity.
  final pulumi.Input<String>? role;
  /// The link to this access-control entry.
  final pulumi.Input<String>? selfLink;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// Creates a new [DefaultObjectAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [generation] The content generation of the object, if applied to an object.
  /// [id] The ID of the access-control entry.
  /// [kind] The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  /// [object] The name of the object, if applied to an object.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  DefaultObjectAccessControlArgs({
    required String bucket,
    String? domain,
    String? email,
    String? entity,
    String? entityId,
    String? etag,
    String? generation,
    String? id,
    String? kind,
    String? object,
    DefaultObjectAccessControlProjectTeam? projectTeam,
    String? role,
    String? selfLink,
    String? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      email = pulumi.Input.asOptionalInput<String>(email),
      entity = pulumi.Input.asOptionalInput<String>(entity),
      entityId = pulumi.Input.asOptionalInput<String>(entityId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      object = pulumi.Input.asOptionalInput<String>(object),
      projectTeam = pulumi.Input.asOptionalInput<DefaultObjectAccessControlProjectTeam>(projectTeam),
      role = pulumi.Input.asOptionalInput<String>(role),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'etag': ?etag,
      'generation': ?generation,
      'id': ?id,
      'kind': ?kind,
      'object': ?object,
      'projectTeam': ?pulumi.Input.mapOptionalInputValue<DefaultObjectAccessControlProjectTeam, Map<String, dynamic>>(projectTeam, (value) => value.toMap()),
      'role': ?role,
      'selfLink': ?selfLink,
      'userProject': ?userProject,
    };
  }

  factory DefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlArgs(
      bucket: map['bucket'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      object: map['object'] == null ? null : map['object'] as String,
      projectTeam: map['projectTeam'] == null ? null : DefaultObjectAccessControlProjectTeam.fromMap((map['projectTeam'] as Map).cast<String, dynamic>()),
      role: map['role'] == null ? null : map['role'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

