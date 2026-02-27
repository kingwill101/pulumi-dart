import 'package:pulumi/pulumi.dart';
import 'cluster_snapshot_args.dart';

/// Manages a DocumentDB database cluster snapshot for DocumentDB clusters.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.docdb.ClusterSnapshot` using the cluster snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/clusterSnapshot:ClusterSnapshot example my-cluster-snapshot
/// ```
class ClusterSnapshot extends CustomResource {
  /// List of EC2 Availability Zones that instances in the DocumentDB cluster snapshot can be restored in.
  late final Output<List<String>> availabilityZones;

  /// The DocumentDB Cluster Identifier from which to take the snapshot.
  late final Output<String> dbClusterIdentifier;

  /// The Amazon Resource Name (ARN) for the DocumentDB Cluster Snapshot.
  late final Output<String> dbClusterSnapshotArn;

  /// The Identifier for the snapshot.
  late final Output<String> dbClusterSnapshotIdentifier;

  /// Specifies the name of the database engine.
  late final Output<String> engine;

  /// Version of the database engine for this DocumentDB cluster snapshot.
  late final Output<String> engineVersion;

  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DocumentDB cluster snapshot.
  late final Output<String> kmsKeyId;

  /// Port that the DocumentDB cluster was listening on at the time of the snapshot.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> snapshotType;
  late final Output<String> sourceDbClusterSnapshotArn;

  /// The status of this DocumentDB Cluster Snapshot.
  late final Output<String> status;

  /// Specifies whether the DocumentDB cluster snapshot is encrypted.
  late final Output<bool> storageEncrypted;

  /// The VPC ID associated with the DocumentDB cluster snapshot.
  late final Output<String> vpcId;

  ClusterSnapshot(
    String name, {
    ClusterSnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/clusterSnapshot:ClusterSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    this.dbClusterSnapshotIdentifier =
        registerOutput<String>('dbClusterSnapshotIdentifier');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
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
