import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_args.dart';

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
    this.acl = registerOutput<String>('acl');
    this.bucket = registerOutput<String>('bucket');
  }
}
