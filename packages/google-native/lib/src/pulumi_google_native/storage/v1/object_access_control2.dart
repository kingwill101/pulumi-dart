import 'package:pulumi/pulumi.dart';
import 'object_access_control_args.dart';
import 'object_access_control_project_team_response.dart';

/// Creates a new ACL entry on the specified object.
/// Auto-naming is currently not supported for this resource.
class ObjectAccessControl2 extends CustomResource {
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

  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  late final Output<String> generation;

  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  late final Output<String> kind;
  late final Output<String> object;

  /// The project team associated with the entity, if any.
  late final Output<ObjectAccessControlProjectTeamResponse> projectTeam;

  /// The access permission for the entity.
  late final Output<String> role;

  /// The link to this access-control entry.
  late final Output<String> selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final Output<String?> userProject;

  ObjectAccessControl2(
    String name, {
    ObjectAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:ObjectAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.entity = Output.createUnknown<String>();
    this.entityId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.generation = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.object = Output.createUnknown<String>();
    this.projectTeam =
        Output.createUnknown<ObjectAccessControlProjectTeamResponse>();
    this.role = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.userProject = Output.createUnknown<String?>();
  }
}
