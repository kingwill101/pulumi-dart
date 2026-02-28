// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_access_control_project_team.dart';

/// An access-control entry.
class BucketAccessControl {
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

  /// The ID of the access-control entry.
  final String? id;

  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  final String? kind;

  /// The project team associated with the entity, if any.
  final BucketAccessControlProjectTeam? projectTeam;

  /// The access permission for the entity.
  final String? role;

  /// The link to this access-control entry.
  final String? selfLink;

  /// Creates a new [BucketAccessControl].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [id] The ID of the access-control entry.
  /// [kind] The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  BucketAccessControl({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.id,
    this.kind,
    this.projectTeam,
    this.role,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final entityValue = entity;
    if (entityValue != null) {
      map['entity'] = entityValue;
    }
    final entityIdValue = entityId;
    if (entityIdValue != null) {
      map['entityId'] = entityIdValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final projectTeamValue = projectTeam;
    if (projectTeamValue != null) {
      map['projectTeam'] = projectTeamValue.toMap();
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    return map;
  }

  factory BucketAccessControl.fromMap(Map<String, dynamic> map) {
    return BucketAccessControl(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      projectTeam: map['projectTeam'] == null
          ? null
          : BucketAccessControlProjectTeam.fromMap(
              (map['projectTeam'] as Map).cast<String, dynamic>()),
      role: map['role'] == null ? null : map['role'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
    );
  }
}
