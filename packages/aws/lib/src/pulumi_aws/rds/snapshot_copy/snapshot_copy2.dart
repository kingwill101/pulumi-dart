import 'package:pulumi/pulumi.dart';
import 'snapshot_copy_args2.dart';

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
class SnapshotCopy2 extends CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  late final Output<String> availabilityZone;

  /// Whether to copy existing tags. Defaults to `false`.
  late final Output<bool?> copyTags;

  /// The Amazon Resource Name (ARN) for the DB snapshot.
  late final Output<String> dbSnapshotArn;

  /// The Destination region to place snapshot copy.
  late final Output<String?> destinationRegion;

  /// Specifies whether the DB snapshot is encrypted.
  late final Output<bool> encrypted;

  /// Specifies the name of the database engine.
  late final Output<String> engine;

  /// Specifies the version of the database engine.
  late final Output<String> engineVersion;

  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  late final Output<int> iops;

  /// KMS key ID.
  late final Output<String?> kmsKeyId;

  /// License model information for the restored DB instance.
  late final Output<String> licenseModel;

  /// The name of an option group to associate with the copy of the snapshot.
  late final Output<String> optionGroupName;
  late final Output<int> port;

  /// he URL that contains a Signature Version 4 signed request.
  late final Output<String?> presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final Output<List<String>?> sharedAccounts;
  late final Output<String> snapshotType;

  /// Snapshot identifier of the source snapshot.
  late final Output<String> sourceDbSnapshotIdentifier;

  /// The region that the DB snapshot was created in or copied from.
  late final Output<String> sourceRegion;

  /// Specifies the storage type associated with DB snapshot.
  late final Output<String> storageType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The external custom Availability Zone.
  late final Output<String?> targetCustomAvailabilityZone;

  /// The Identifier for the snapshot.
  late final Output<String> targetDbSnapshotIdentifier;

  /// Provides the VPC ID associated with the DB snapshot.
  late final Output<String> vpcId;

  SnapshotCopy2(
    String name, {
    SnapshotCopyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/snapshotCopy:SnapshotCopy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
