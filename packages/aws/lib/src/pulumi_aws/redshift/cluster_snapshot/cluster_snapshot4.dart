import 'package:pulumi/pulumi.dart';
import 'cluster_snapshot_args4.dart';

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
class ClusterSnapshot4 extends CustomResource {
  /// Amazon Resource Name (ARN) of the snapshot.
  late final Output<String> arn;

  /// The cluster identifier for which you want a snapshot.
  late final Output<String> clusterIdentifier;

  /// The Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  late final Output<String> kmsKeyId;

  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  late final Output<int?> manualSnapshotRetentionPeriod;

  /// For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  late final Output<String> ownerAccount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  late final Output<String> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterSnapshot4(
    String name, {
    ClusterSnapshotArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterSnapshot:ClusterSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
