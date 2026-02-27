import 'package:pulumi/pulumi.dart';
import 'cluster_snapshot_args2.dart';

/// Manages a Neptune database cluster snapshot.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.ClusterSnapshot` using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot2 extends CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  late final Output<List<String>> availabilityZones;

  /// The DB Cluster Identifier from which to take the snapshot.
  late final Output<String> dbClusterIdentifier;

  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  late final Output<String> dbClusterSnapshotArn;

  /// The Identifier for the snapshot.
  late final Output<String> dbClusterSnapshotIdentifier;

  /// Specifies the name of the database engine.
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
  late final Output<String> snapshotType;
  late final Output<String> sourceDbClusterSnapshotArn;

  /// The status of this DB Cluster Snapshot.
  late final Output<String> status;

  /// Specifies whether the DB cluster snapshot is encrypted.
  late final Output<bool> storageEncrypted;

  /// The VPC ID associated with the DB cluster snapshot.
  late final Output<String> vpcId;

  ClusterSnapshot2(
    String name, {
    ClusterSnapshotArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterSnapshot:ClusterSnapshot',
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
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbClusterSnapshotArn =
        registerOutput<String>('sourceDbClusterSnapshotArn');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
