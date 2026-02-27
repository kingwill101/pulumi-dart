import 'package:pulumi/pulumi.dart';
import 'default_object_aclargs.dart';

/// Authoritatively manages the default object ACLs for a Google Cloud Storage bucket
/// without managing the bucket itself.
///
/// > Note that for each object, its creator will have the `"OWNER"` role in addition
/// to the default ACL that has been defined.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/defaultObjectAccessControls).
///
/// > Want fine-grained control over default object ACLs? Use `gcp.storage.DefaultObjectAccessControl`
/// to control individual role entity pairs.
///
/// ## Example Usage
///
/// Example creating a default object ACL on a bucket with one owner, and one reader.
///
///
///
/// ## Import
///
/// This resource does not support import.
class DefaultObjectACL extends CustomResource {
  /// The name of the bucket it applies to.
  late final Output<String> bucket;

  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  late final Output<List<String>> roleEntities;

  DefaultObjectACL(
    String name, {
    DefaultObjectACLArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/defaultObjectACL:DefaultObjectACL',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.roleEntities = registerOutput<List<String>>('roleEntities');
  }
}
