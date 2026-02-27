import 'package:pulumi/pulumi.dart';
import 'bucket_access_control_args.dart';

/// Bucket ACLs can be managed authoritatively using the
/// `storage_bucket_acl` resource. Do not use these two resources in conjunction to manage the same bucket.
///
/// The BucketAccessControls resource manages the Access Control List
/// (ACLs) for a single entity/role pairing on a bucket. ACLs let you specify who
/// has access to your data and to what extent.
///
/// There are three roles that can be assigned to an entity:
///
/// READERs can get the bucket, though no acl property will be returned, and
/// list the bucket's objects.  WRITERs are READERs, and they can insert
/// objects into the bucket and delete the bucket's objects.  OWNERs are
/// WRITERs, and they can get the acl property of a bucket, update a bucket,
/// and call all BucketAccessControls methods on the bucket.  For more
/// information, see Access Control, with the caveat that this API uses
/// READER, WRITER, and OWNER instead of READ, WRITE, and FULL_CONTROL.
///
///
/// To get more information about BucketAccessControl, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/access-control/lists)
///
/// ## Example Usage
///
/// ### Storage Bucket Access Control Public Bucket
///
///
///
///
/// ## Import
///
/// BucketAccessControl can be imported using any of these accepted formats:
///
/// * `{{bucket}}/{{entity}}`
///
/// When using the `pulumi import` command, BucketAccessControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/bucketAccessControl:BucketAccessControl default {{bucket}}/{{entity}}
/// ```
class BucketAccessControl extends CustomResource {
  /// The name of the bucket.
  late final Output<String> bucket;

  /// The domain associated with the entity.
  late final Output<String> domain;

  /// The email address associated with the entity.
  late final Output<String> email;

  /// The entity holding the permission, in one of the following forms:
  /// user-userId
  /// user-email
  /// group-groupId
  /// group-email
  /// domain-domain
  /// project-team-projectId
  /// allUsers
  /// allAuthenticatedUsers
  /// Examples:
  /// The user liz@example.com would be user-liz@example.com.
  /// The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  late final Output<String> entity;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  late final Output<String?> role;

  BucketAccessControl(
    String name, {
    BucketAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketAccessControl:BucketAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.role = registerOutput<String?>('role');
  }
}
