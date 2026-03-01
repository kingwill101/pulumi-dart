// ignore_for_file: unused_element, unnecessary_cast

import 'object_access_control_project_team.dart';

/// An access-control entry.
class ObjectAccessControl {
  /// The name of the bucket.
  final String? bucket;

  /// The domain associated with the entity, if any.
  final String? domain;

  /// The email address associated with the entity, if any.
  final String? email;

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
  final String? entity;

  /// The ID for the entity, if any.
  final String? entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  final String? etag;

  /// The content generation of the object, if applied to an object.
  final String? generation;

  /// The ID of the access-control entry.
  final String? id;

  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final String? kind;

  /// The name of the object, if applied to an object.
  final String? object;

  /// The project team associated with the entity, if any.
  final ObjectAccessControlProjectTeam? projectTeam;

  /// The access permission for the entity.
  final String? role;

  /// The link to this access-control entry.
  final String? selfLink;

  /// Creates a new [ObjectAccessControl].
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
  ObjectAccessControl({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.generation,
    this.id,
    this.kind,
    this.object,
    this.projectTeam,
    this.role,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'etag': ?etag,
      'generation': ?generation,
      'id': ?id,
      'kind': ?kind,
      'object': ?object,
      'projectTeam': ?projectTeam == null ? null : projectTeam!.toMap(),
      'role': ?role,
      'selfLink': ?selfLink,
    };
  }

  factory ObjectAccessControl.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControl(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      generation: map['generation'] == null
          ? null
          : map['generation'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      object: map['object'] == null ? null : map['object'] as String,
      projectTeam: map['projectTeam'] == null
          ? null
          : ObjectAccessControlProjectTeam.fromMap(
              (map['projectTeam'] as Map).cast<String, dynamic>(),
            ),
      role: map['role'] == null ? null : map['role'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
    );
  }
}
