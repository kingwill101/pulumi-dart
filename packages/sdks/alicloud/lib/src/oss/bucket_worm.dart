import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_worm_args.dart';
import 'bucket_worm_state.dart';

/// ## Import
///
/// OSS Bucket Worm can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketWorm:BucketWorm example <bucket>:<worm_id>
/// ```
class BucketWorm extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The specified number of days to retain the Object.
  late final pulumi.Output<int?> retentionPeriodInDays;

  /// The status of the compliance retention policy. Optional values:
  /// - `InProgress`: After a compliance retention policy is created, the policy is in the InProgress status by default, and the validity period of this status is 24 hours.
  /// - `Locked`: The compliance retention policy is Locked.
  late final pulumi.Output<String> status;

  /// The ID of the retention policy.
  late final pulumi.Output<String> wormId;

  /// Creates a new [BucketWorm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketWorm]. {@macro pulumi_oss_bucket_worm_bucket_worm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketWorm(
    String name, {
    BucketWormArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketWorm:BucketWorm',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    retentionPeriodInDays = registerOutput<int?>('retentionPeriodInDays');
    status = registerOutput<String>('status');
    wormId = registerOutput<String>('wormId');
  }

  /// Gets an existing [BucketWorm] resource's state with the given [name] and [id].
  static BucketWorm get(
    String name,
    pulumi.Input<String> id, {
    BucketWormState? state,
  }) {
    return BucketWorm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketWorm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketWorm:BucketWorm',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    retentionPeriodInDays = registerOutput<int?>('retentionPeriodInDays');
    status = registerOutput<String>('status');
    wormId = registerOutput<String>('wormId');
  }
}
