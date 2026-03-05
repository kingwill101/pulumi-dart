import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_args.dart';
import 'bucket_versioning_state.dart';

/// ## Import
///
/// OSS Bucket Versioning can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketVersioning:BucketVersioning example <id>
/// ```
class BucketVersioningOss extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// A bucket can be in one of the following versioning states: disabled, enabled, or suspended. By default, versioning is disabled for a bucket. Updating the value from Enabled or Suspended to Disabled will result in errors, because OSS does not support returning buckets to an unversioned state. .
  late final pulumi.Output<String> status;

  /// Creates a new [BucketVersioningOss].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketVersioningOss]. {@macro pulumi_oss_bucket_versioning_bucket_versioning_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketVersioningOss(
    String name, {
    BucketVersioningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketVersioning:BucketVersioning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BucketVersioningOss] resource's state with the given [name] and [id].
  static BucketVersioningOss get(
    String name,
    pulumi.Input<String> id, {
    BucketVersioningState? state,
  }) {
    return BucketVersioningOss._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketVersioningOss._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketVersioning:BucketVersioning',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    status = registerOutput<String>('status');
  }
}
