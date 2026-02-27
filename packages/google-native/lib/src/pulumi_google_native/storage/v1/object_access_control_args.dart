// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_project_team.dart';

/// The set of arguments for ObjectAccessControl.
class ObjectAccessControlArgs {
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
  final pulumi.Input<String> object;

  /// The project team associated with the entity, if any.
  final pulumi.Input<ObjectAccessControlProjectTeam>? projectTeam;

  /// The access permission for the entity.
  final pulumi.Input<String>? role;

  /// The link to this access-control entry.
  final pulumi.Input<String>? selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  ObjectAccessControlArgs({
    required this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.generation,
    this.id,
    this.kind,
    required this.object,
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
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    map['object'] = object;
    final projectTeamValue = projectTeam;
    if (projectTeamValue != null) {
      map['projectTeam'] = pulumi.Input.mapOptionalInputValue<
          ObjectAccessControlProjectTeam,
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

  factory ObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      email: pulumi.Input.asOptionalInput<String>(map['email']),
      entity: pulumi.Input.asOptionalInput<String>(map['entity']),
      entityId: pulumi.Input.asOptionalInput<String>(map['entityId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      generation: pulumi.Input.asOptionalInput<String>(map['generation']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      object: pulumi.Input.asInput<String>(map['object']),
      projectTeam: pulumi.Input.asOptionalInput<ObjectAccessControlProjectTeam>(
          map['projectTeam']),
      role: pulumi.Input.asOptionalInput<String>(map['role']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
