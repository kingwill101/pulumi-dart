import 'package:pulumi/pulumi.dart';
import 'volume_args.dart';

/// Manages a single EBS volume.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EBS Volumes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/volume:Volume id vol-049df61146c4d7901
/// ```
class Volume extends CustomResource {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  late final Output<String> arn;

  /// Availability zone where the EBS volume will exist.
  late final Output<String> availabilityZone;

  /// Timestamp when volume creation was initiated.
  late final Output<String> createTime;

  /// If true, the disk will be encrypted.
  late final Output<bool> encrypted;

  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  late final Output<bool?> finalSnapshot;

  /// Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  late final Output<int> iops;

  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  late final Output<String> kmsKeyId;

  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  late final Output<bool?> multiAttachEnabled;

  /// Amazon Resource Name (ARN) of the Outpost.
  late final Output<String?> outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Size of the drive in GiBs.
  late final Output<int> size;

  /// A snapshot to base the EBS volume off of.
  late final Output<String> snapshotId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  late final Output<int> throughput;

  /// Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  late final Output<String> type;

  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshot_id` is specified.
  ///
  /// > **NOTE:** At least one of `size` or `snapshot_id` is required.
  ///
  /// > **NOTE:** When changing the `size`, `iops` or `type` of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  late final Output<int?> volumeInitializationRate;

  Volume(
    String name, {
    VolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volume:Volume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createTime = registerOutput<String>('createTime');
    this.encrypted = registerOutput<bool>('encrypted');
    this.finalSnapshot = registerOutput<bool?>('finalSnapshot');
    this.iops = registerOutput<int>('iops');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.multiAttachEnabled = registerOutput<bool?>('multiAttachEnabled');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.region = registerOutput<String>('region');
    this.size = registerOutput<int>('size');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughput = registerOutput<int>('throughput');
    this.type = registerOutput<String>('type');
    this.volumeInitializationRate =
        registerOutput<int?>('volumeInitializationRate');
  }
}
