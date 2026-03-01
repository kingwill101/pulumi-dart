import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cname_token_args.dart';
import 'bucket_cname_token_state.dart';

/// ## Import
///
/// OSS Bucket Cname Token can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketCnameToken:BucketCnameToken example <bucket>:<domain>
/// ```
class BucketCnameToken extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;
  /// The custom domain
  late final pulumi.Output<String> domain;
  /// Token used to verify domain ownership
  late final pulumi.Output<String> token;

  /// Creates a new [BucketCnameToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketCnameToken]. {@macro pulumi_oss_bucket_cname_token_bucket_cname_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketCnameToken(
    String name, {
    BucketCnameTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketCnameToken:BucketCnameToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.token = registerOutput<String>('token');
  }

  /// Gets an existing [BucketCnameToken] resource's state with the given [name] and [id].
  static BucketCnameToken get(
    String name,
    pulumi.Input<String> id, {
    BucketCnameTokenState? state,
  }) {
    return BucketCnameToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketCnameToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketCnameToken:BucketCnameToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.token = registerOutput<String>('token');
  }
}
