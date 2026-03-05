import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_args.dart';
import 'bucket_acl_state.dart';

/// ## Import
///
/// OSS Bucket Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketAcl:BucketAcl example <id>
/// ```
class BucketAcl extends pulumi.CustomResource {
  /// Bucket-level Access Control List (ACL)，Valid values: `private`, `public-read`, `public-read-write`.
  late final pulumi.Output<String> acl;
  /// The name of the bucket to which the current ACL configuration belongs.
  late final pulumi.Output<String> bucket;

  /// Creates a new [BucketAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAcl]. {@macro pulumi_oss_bucket_acl_bucket_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAcl(
    String name, {
    BucketAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketAcl:BucketAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String>('acl');
    bucket = registerOutput<String>('bucket');
  }

  /// Gets an existing [BucketAcl] resource's state with the given [name] and [id].
  static BucketAcl get(
    String name,
    pulumi.Input<String> id, {
    BucketAclState? state,
  }) {
    return BucketAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketAcl:BucketAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String>('acl');
    bucket = registerOutput<String>('bucket');
  }
}
