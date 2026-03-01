import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_args.dart';
import 'bucket_access_control_project_team_response.dart';

/// Creates a new ACL entry on the specified bucket.
/// Auto-naming is currently not supported for this resource.
class BucketAccessControlStorageV1 extends pulumi.CustomResource {
  late final pulumi.Output<String> bucket;

  /// The domain associated with the entity, if any.
  late final pulumi.Output<String> domain;

  /// The email address associated with the entity, if any.
  late final pulumi.Output<String> email;

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
  late final pulumi.Output<String> entity;

  /// The ID for the entity, if any.
  late final pulumi.Output<String> entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  late final pulumi.Output<String> etag;

  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  late final pulumi.Output<String> kind;

  /// The project team associated with the entity, if any.
  late final pulumi.Output<BucketAccessControlProjectTeamResponse> projectTeam;

  /// The access permission for the entity.
  late final pulumi.Output<String> role;

  /// The link to this access-control entry.
  late final pulumi.Output<String> selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final pulumi.Output<String?> userProject;

  /// Creates a new [BucketAccessControlStorageV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAccessControlStorageV1]. {@macro pulumi_storage_v1_bucket_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAccessControlStorageV1(
    String name, {
    BucketAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:storage/v1:BucketAccessControl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.entityId = registerOutput<String>('entityId');
    this.etag = registerOutput<String>('etag');
    this.kind = registerOutput<String>('kind');
    this.projectTeam = registerOutput<BucketAccessControlProjectTeamResponse>(
      'projectTeam',
    );
    this.role = registerOutput<String>('role');
    this.selfLink = registerOutput<String>('selfLink');
    this.userProject = registerOutput<String?>('userProject');
  }
}
