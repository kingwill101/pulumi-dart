import 'package:pulumi/pulumi.dart';
import 'cluster_snapshot_args3.dart';

/// Manages an RDS database cluster snapshot for Aurora clusters. For managing RDS database instance snapshots, see the `aws.rds.Snapshot` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterSnapshot` using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot3 extends CustomResource {
  /// Allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  late final Output<List<String>> availabilityZones;

  /// The DB Cluster Identifier from which to take the snapshot.
  late final Output<String> dbClusterIdentifier;

  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  late final Output<String> dbClusterSnapshotArn;

  /// The Identifier for the snapshot.
  late final Output<String> dbClusterSnapshotIdentifier;

  /// Name of the database engine.
  late final Output<String> engine;

  /// Version of the database engine for this DB cluster snapshot.
  late final Output<String> engineVersion;

  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  late final Output<String> kmsKeyId;

  /// License model information for the restored DB cluster.
  late final Output<String> licenseModel;

  /// Port that the DB cluster was listening on at the time of the snapshot.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final Output<List<String>?> sharedAccounts;
  late final Output<String> snapshotType;
  late final Output<String> sourceDbClusterSnapshotArn;

  /// The status of this DB Cluster Snapshot.
  late final Output<String> status;

  /// Whether the DB cluster snapshot is encrypted.
  late final Output<bool> storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID associated with the DB cluster snapshot.
  late final Output<String> vpcId;

  ClusterSnapshot3(
    String name, {
    ClusterSnapshotArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshot:ClusterSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    this.dbClusterSnapshotIdentifier =
        registerOutput<String>('dbClusterSnapshotIdentifier');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbClusterSnapshotArn =
        registerOutput<String>('sourceDbClusterSnapshotArn');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
