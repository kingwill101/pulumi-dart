// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bucket_access_control_project_team.dart';

/// The set of arguments for BucketAccessControl.
class BucketAccessControlArgs {
  /// The name of the bucket.
  final Input<String> bucket;

  /// The domain associated with the entity, if any.
  final Input<String>? domain;

  /// The email address associated with the entity, if any.
  final Input<String>? email;

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
  final Input<String>? entity;

  /// The ID for the entity, if any.
  final Input<String>? entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  final Input<String>? etag;

  /// The ID of the access-control entry.
  final Input<String>? id;

  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  final Input<String>? kind;

  /// The project team associated with the entity, if any.
  final Input<BucketAccessControlProjectTeam>? projectTeam;

  /// The access permission for the entity.
  final Input<String>? role;

  /// The link to this access-control entry.
  final Input<String>? selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final Input<String>? userProject;

  BucketAccessControlArgs({
    required this.bucket,
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
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
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
      map['projectTeam'] = Input.mapOptionalInputValue<
          BucketAccessControlProjectTeam,
          Map<String, dynamic>>(projectTeamValue, (value) => value.toMap());
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      domain: Input.asOptionalInput<String>(map['domain']),
      email: Input.asOptionalInput<String>(map['email']),
      entity: Input.asOptionalInput<String>(map['entity']),
      entityId: Input.asOptionalInput<String>(map['entityId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      id: Input.asOptionalInput<String>(map['id']),
      kind: Input.asOptionalInput<String>(map['kind']),
      projectTeam: Input.asOptionalInput<BucketAccessControlProjectTeam>(
          map['projectTeam']),
      role: Input.asOptionalInput<String>(map['role']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
