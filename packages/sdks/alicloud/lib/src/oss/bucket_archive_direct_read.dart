import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_archive_direct_read_args.dart';
import 'bucket_archive_direct_read_state.dart';

/// ## Import
///
/// OSS Bucket Archive Direct Read can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketArchiveDirectRead:BucketArchiveDirectRead example <bucket>
/// ```
class BucketArchiveDirectRead extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;

  /// Specifies whether to enable real-time access of Archive objects for a bucket. Valid values: true and false.
  late final pulumi.Output<bool> enabled;

  /// Creates a new [BucketArchiveDirectRead].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketArchiveDirectRead]. {@macro pulumi_oss_bucket_archive_direct_read_bucket_archive_direct_read_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketArchiveDirectRead(
    String name, {
    BucketArchiveDirectReadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketArchiveDirectRead:BucketArchiveDirectRead',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    enabled = registerOutput<bool>('enabled');
  }

  /// Gets an existing [BucketArchiveDirectRead] resource's state with the given [name] and [id].
  static BucketArchiveDirectRead get(
    String name,
    pulumi.Input<String> id, {
    BucketArchiveDirectReadState? state,
  }) {
    return BucketArchiveDirectRead._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketArchiveDirectRead._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketArchiveDirectRead:BucketArchiveDirectRead',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    enabled = registerOutput<bool>('enabled');
  }
}
