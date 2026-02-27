import 'package:pulumi/pulumi.dart' hide Config;
import 'default_object_access_control_args.dart';
import 'default_object_access_control_project_team_response.dart';

/// Creates a new default object ACL entry on the specified bucket.
/// Auto-naming is currently not supported for this resource.
class DefaultObjectAccessControl extends CustomResource {
  late final Output<String> bucket;

  /// The domain associated with the entity, if any.
  late final Output<String> domain;

  /// The email address associated with the entity, if any.
  late final Output<String> email;

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
  late final Output<String> entity;

  /// The ID for the entity, if any.
  late final Output<String> entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  late final Output<String> etag;

  /// The content generation of the object, if applied to an object.
  late final Output<String> generation;

  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  late final Output<String> kind;

  /// The name of the object, if applied to an object.
  late final Output<String> object;

  /// The project team associated with the entity, if any.
  late final Output<DefaultObjectAccessControlProjectTeamResponse> projectTeam;

  /// The access permission for the entity.
  late final Output<String> role;

  /// The link to this access-control entry.
  late final Output<String> selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final Output<String?> userProject;

  DefaultObjectAccessControl(
    String name, {
    DefaultObjectAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:DefaultObjectAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.entityId = registerOutput<String>('entityId');
    this.etag = registerOutput<String>('etag');
    this.generation = registerOutput<String>('generation');
    this.kind = registerOutput<String>('kind');
    this.object = registerOutput<String>('object');
    this.projectTeam =
        registerOutput<DefaultObjectAccessControlProjectTeamResponse>(
            'projectTeam');
    this.role = registerOutput<String>('role');
    this.selfLink = registerOutput<String>('selfLink');
    this.userProject = registerOutput<String?>('userProject');
  }
}
