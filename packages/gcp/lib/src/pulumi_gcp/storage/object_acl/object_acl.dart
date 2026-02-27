import 'package:pulumi/pulumi.dart';
import 'object_aclargs.dart';

/// Authoritatively manages the access control list (ACL) for an object in a Google
/// Cloud Storage (GCS) bucket. Removing a `gcp.storage.ObjectACL` sets the
/// acl to the `private` [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl).
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls).
///
/// > Want fine-grained control over object ACLs? Use `gcp.storage.ObjectAccessControl` to control individual
/// role entity pairs.
///
/// ## Example Usage
///
/// Create an object ACL with one owner and one reader.
///
///
///
/// ## Import
///
/// This resource does not support import.
class ObjectACL extends CustomResource {
  /// The name of the bucket the object is stored in.
  late final Output<String> bucket;

  /// The name of the object to apply the acl to.
  ///
  /// - - -
  late final Output<String> object;

  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  late final Output<String?> predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefined_acl` is not.
  late final Output<List<String>> roleEntities;

  ObjectACL(
    String name, {
    ObjectACLArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectACL:ObjectACL',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.object = registerOutput<String>('object');
    this.predefinedAcl = registerOutput<String?>('predefinedAcl');
    this.roleEntities = registerOutput<List<String>>('roleEntities');
  }
}
