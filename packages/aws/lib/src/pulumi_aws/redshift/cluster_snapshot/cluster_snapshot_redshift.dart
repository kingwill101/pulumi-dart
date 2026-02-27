import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_redshift_args.dart';

/// Creates a Redshift cluster snapshot
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Cluster Snapshots using `snapshot_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/clusterSnapshot:ClusterSnapshot test example
/// ```
class ClusterSnapshotRedshift extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the snapshot.
  late final pulumi.Output<String> arn;

  /// The cluster identifier for which you want a snapshot.
  late final pulumi.Output<String> clusterIdentifier;

  /// The Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  late final pulumi.Output<String> kmsKeyId;

  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  late final pulumi.Output<int?> manualSnapshotRetentionPeriod;

  /// For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  late final pulumi.Output<String> ownerAccount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  late final pulumi.Output<String> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterSnapshotRedshift(
    String name, {
    ClusterSnapshotRedshiftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.manualSnapshotRetentionPeriod =
        registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
