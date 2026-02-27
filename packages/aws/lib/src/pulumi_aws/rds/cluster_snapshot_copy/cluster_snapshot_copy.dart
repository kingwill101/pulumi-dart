import 'package:pulumi/pulumi.dart';
import '../cluster_snapshot_copy_timeouts/cluster_snapshot_copy_timeouts.dart';
import 'cluster_snapshot_copy_args.dart';

/// Manages an RDS database cluster snapshot copy. For managing RDS database instance snapshot copies, see the `aws.rds.SnapshotCopy` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterSnapshotCopy` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterSnapshotCopy:ClusterSnapshotCopy example my-snapshot
/// ```
class ClusterSnapshotCopy extends CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final Output<int> allocatedStorage;

  /// Whether to copy existing tags. Defaults to `false`.
  late final Output<bool?> copyTags;

  /// The Amazon Resource Name (ARN) for the DB cluster snapshot.
  late final Output<String> dbClusterSnapshotArn;

  /// The Destination region to place snapshot copy.
  late final Output<String?> destinationRegion;

  /// Specifies the name of the database engine.
  late final Output<String> engine;

  /// Specifies the version of the database engine.
  late final Output<String> engineVersion;

  /// KMS key ID.
  late final Output<String?> kmsKeyId;

  /// License model information for the restored DB instance.
  late final Output<String> licenseModel;

  /// URL that contains a Signature Version 4 signed request.
  late final Output<String?> presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final Output<List<String>?> sharedAccounts;
  late final Output<String> snapshotType;

  /// Identifier of the source snapshot.
  late final Output<String> sourceDbClusterSnapshotIdentifier;

  /// Specifies whether the DB cluster snapshot is encrypted.
  late final Output<bool> storageEncrypted;

  /// Specifies the storage type associated with DB cluster snapshot.
  late final Output<String> storageType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier for the snapshot.
  ///
  /// The following arguments are optional:
  late final Output<String> targetDbClusterSnapshotIdentifier;
  late final Output<ClusterSnapshotCopyTimeouts?> timeouts;

  /// Provides the VPC ID associated with the DB cluster snapshot.
  late final Output<String> vpcId;

  ClusterSnapshotCopy(
    String name, {
    ClusterSnapshotCopyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterSnapshotCopy:ClusterSnapshotCopy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.copyTags = registerOutput<bool?>('copyTags');
    this.dbClusterSnapshotArn = registerOutput<String>('dbClusterSnapshotArn');
    this.destinationRegion = registerOutput<String?>('destinationRegion');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.presignedUrl = registerOutput<String?>('presignedUrl');
    this.region = registerOutput<String>('region');
    this.sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbClusterSnapshotIdentifier =
        registerOutput<String>('sourceDbClusterSnapshotIdentifier');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetDbClusterSnapshotIdentifier =
        registerOutput<String>('targetDbClusterSnapshotIdentifier');
    this.timeouts = registerOutput<ClusterSnapshotCopyTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
