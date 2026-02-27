import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_copy_rds_args.dart';

/// Manages an RDS database instance snapshot copy. For managing RDS database cluster snapshots, see the `aws.rds.ClusterSnapshot` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.SnapshotCopy` using the snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/snapshotCopy:SnapshotCopy example my-snapshot
/// ```
class SnapshotCopyRds extends pulumi.CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final pulumi.Output<int> allocatedStorage;

  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  late final pulumi.Output<String> availabilityZone;

  /// Whether to copy existing tags. Defaults to `false`.
  late final pulumi.Output<bool?> copyTags;

  /// The Amazon Resource Name (ARN) for the DB snapshot.
  late final pulumi.Output<String> dbSnapshotArn;

  /// The Destination region to place snapshot copy.
  late final pulumi.Output<String?> destinationRegion;

  /// Specifies whether the DB snapshot is encrypted.
  late final pulumi.Output<bool> encrypted;

  /// Specifies the name of the database engine.
  late final pulumi.Output<String> engine;

  /// Specifies the version of the database engine.
  late final pulumi.Output<String> engineVersion;

  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  late final pulumi.Output<int> iops;

  /// KMS key ID.
  late final pulumi.Output<String?> kmsKeyId;

  /// License model information for the restored DB instance.
  late final pulumi.Output<String> licenseModel;

  /// The name of an option group to associate with the copy of the snapshot.
  late final pulumi.Output<String> optionGroupName;
  late final pulumi.Output<int> port;

  /// he URL that contains a Signature Version 4 signed request.
  late final pulumi.Output<String?> presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final pulumi.Output<List<String>?> sharedAccounts;
  late final pulumi.Output<String> snapshotType;

  /// Snapshot identifier of the source snapshot.
  late final pulumi.Output<String> sourceDbSnapshotIdentifier;

  /// The region that the DB snapshot was created in or copied from.
  late final pulumi.Output<String> sourceRegion;

  /// Specifies the storage type associated with DB snapshot.
  late final pulumi.Output<String> storageType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The external custom Availability Zone.
  late final pulumi.Output<String?> targetCustomAvailabilityZone;

  /// The Identifier for the snapshot.
  late final pulumi.Output<String> targetDbSnapshotIdentifier;

  /// Provides the VPC ID associated with the DB snapshot.
  late final pulumi.Output<String> vpcId;

  SnapshotCopyRds(
    String name, {
    SnapshotCopyRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/snapshotCopy:SnapshotCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.copyTags = registerOutput<bool?>('copyTags');
    this.dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    this.destinationRegion = registerOutput<String?>('destinationRegion');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.iops = registerOutput<int>('iops');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.optionGroupName = registerOutput<String>('optionGroupName');
    this.port = registerOutput<int>('port');
    this.presignedUrl = registerOutput<String?>('presignedUrl');
    this.region = registerOutput<String>('region');
    this.sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbSnapshotIdentifier =
        registerOutput<String>('sourceDbSnapshotIdentifier');
    this.sourceRegion = registerOutput<String>('sourceRegion');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetCustomAvailabilityZone =
        registerOutput<String?>('targetCustomAvailabilityZone');
    this.targetDbSnapshotIdentifier =
        registerOutput<String>('targetDbSnapshotIdentifier');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
