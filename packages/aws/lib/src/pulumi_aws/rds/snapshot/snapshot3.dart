import 'package:pulumi/pulumi.dart';
import 'snapshot_args3.dart';

/// Manages an RDS database instance snapshot. For managing RDS database cluster snapshots, see the `aws.rds.ClusterSnapshot` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.Snapshot` using the snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/snapshot:Snapshot example my-snapshot
/// ```
class Snapshot3 extends CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  late final Output<String> availabilityZone;

  /// The DB Instance Identifier from which to take the snapshot.
  late final Output<String> dbInstanceIdentifier;

  /// The Amazon Resource Name (ARN) for the DB snapshot.
  late final Output<String> dbSnapshotArn;

  /// The Identifier for the snapshot.
  late final Output<String> dbSnapshotIdentifier;

  /// Specifies whether the DB snapshot is encrypted.
  late final Output<bool> encrypted;

  /// Specifies the name of the database engine.
  late final Output<String> engine;

  /// Specifies the version of the database engine.
  late final Output<String> engineVersion;

  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  late final Output<int> iops;

  /// The ARN for the KMS encryption key.
  late final Output<String> kmsKeyId;

  /// License model information for the restored DB instance.
  late final Output<String> licenseModel;

  /// Provides the option group name for the DB snapshot.
  late final Output<String> optionGroupName;
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final Output<List<String>?> sharedAccounts;
  late final Output<String> snapshotType;

  /// The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  late final Output<String> sourceDbSnapshotIdentifier;

  /// The region that the DB snapshot was created in or copied from.
  late final Output<String> sourceRegion;

  /// Specifies the status of this DB snapshot.
  late final Output<String> status;

  /// Specifies the storage type associated with DB snapshot.
  late final Output<String> storageType;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Provides the VPC ID associated with the DB snapshot.
  late final Output<String> vpcId;

  Snapshot3(
    String name, {
    SnapshotArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    this.dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    this.dbSnapshotIdentifier = registerOutput<String>('dbSnapshotIdentifier');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.iops = registerOutput<int>('iops');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.optionGroupName = registerOutput<String>('optionGroupName');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbSnapshotIdentifier =
        registerOutput<String>('sourceDbSnapshotIdentifier');
    this.sourceRegion = registerOutput<String>('sourceRegion');
    this.status = registerOutput<String>('status');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
