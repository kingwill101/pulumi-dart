import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_transfer_acceleration_args.dart';

/// ## Import
///
/// OSS Bucket Transfer Acceleration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketTransferAcceleration:BucketTransferAcceleration example <id>
/// ```
class BucketTransferAccelerationOss extends pulumi.CustomResource {
  /// The name of the Bucket.
  late final pulumi.Output<String> bucket;
  /// Specifies whether to enable transfer acceleration for the bucket. Valid values: true: transfer acceleration for the bucket is enabled. false: transfer acceleration for the bucket is disabled.
  late final pulumi.Output<bool?> enabled;

  /// Creates a new [BucketTransferAccelerationOss].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketTransferAccelerationOss]. {@macro pulumi_oss_bucket_transfer_acceleration_bucket_transfer_acceleration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketTransferAccelerationOss(
    String name, {
    BucketTransferAccelerationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketTransferAcceleration:BucketTransferAcceleration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.enabled = registerOutput<bool?>('enabled');
  }
}
