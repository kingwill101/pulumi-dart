import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';

/// Creates a Snapshot of an EBS Volume.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EBS Snapshot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/snapshot:Snapshot id snap-049df61146c4d7901
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final pulumi.Output<String> arn;

  /// The data encryption key identifier for the snapshot.
  late final pulumi.Output<String> dataEncryptionKeyId;

  /// A description of what the snapshot is.
  late final pulumi.Output<String?> description;

  /// Whether the snapshot is encrypted.
  late final pulumi.Output<bool> encrypted;

  /// The ARN for the KMS encryption key.
  late final pulumi.Output<String> kmsKeyId;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  late final pulumi.Output<String?> outpostArn;

  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  late final pulumi.Output<String> ownerAlias;

  /// The AWS account ID of the EBS snapshot owner.
  late final pulumi.Output<String> ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  late final pulumi.Output<bool?> permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  late final pulumi.Output<String> storageTier;

  /// A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final pulumi.Output<int?> temporaryRestoreDays;

  /// The Volume ID of which to make a snapshot.
  late final pulumi.Output<String> volumeId;

  /// The size of the drive in GiBs.
  late final pulumi.Output<int> volumeSize;

  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool>('encrypted');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerAlias = registerOutput<String>('ownerAlias');
    this.ownerId = registerOutput<String>('ownerId');
    this.permanentRestore = registerOutput<bool?>('permanentRestore');
    this.region = registerOutput<String>('region');
    this.storageTier = registerOutput<String>('storageTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSize = registerOutput<int>('volumeSize');
  }
}
