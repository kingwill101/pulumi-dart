import 'package:pulumi/pulumi.dart';
import 'bucket_aclargs.dart';

/// Authoritatively manages a bucket's ACLs in Google cloud storage service (GCS). For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls).
///
/// Bucket ACLs can be managed non authoritatively using the `storage_bucket_access_control` resource. Do not use these two resources in conjunction to manage the same bucket.
///
/// Permissions can be granted either by ACLs or Cloud IAM policies. In general, permissions granted by Cloud IAM policies do not appear in ACLs, and permissions granted by ACLs do not appear in Cloud IAM policies. The only exception is for ACLs applied directly on a bucket and certain bucket-level Cloud IAM policies, as described in [Cloud IAM relation to ACLs](https://cloud.google.com/storage/docs/access-control/iam#acls).
///
/// **NOTE** This resource will not remove the `project-owners-<project_id>` entity from the `OWNER` role.
///
/// ## Example Usage
///
/// Example creating an ACL on a bucket with one owner, and one reader.
///
///
///
/// ## Import
///
/// This resource does not support import.
class BucketACL extends CustomResource {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  late final Output<String> bucket;

  /// Configure this ACL to be the default ACL.
  late final Output<String?> defaultAcl;

  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  late final Output<String?> predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  late final Output<List<String>> roleEntities;

  BucketACL(
    String name, {
    BucketACLArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketACL:BucketACL',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.defaultAcl = registerOutput<String?>('defaultAcl');
    this.predefinedAcl = registerOutput<String?>('predefinedAcl');
    this.roleEntities = registerOutput<List<String>>('roleEntities');
  }
}
