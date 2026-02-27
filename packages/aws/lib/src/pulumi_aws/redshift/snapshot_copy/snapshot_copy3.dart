import 'package:pulumi/pulumi.dart';
import 'snapshot_copy_args3.dart';

/// Resource for managing an AWS Redshift Snapshot Copy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Copy using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotCopy:SnapshotCopy example cluster-id-12345678
/// ```
class SnapshotCopy3 extends CustomResource {
  /// Identifier of the source cluster.
  late final Output<String> clusterIdentifier;

  /// AWS Region to copy snapshots to.
  ///
  /// The following arguments are optional:
  late final Output<String> destinationRegion;

  /// Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  late final Output<int> manualSnapshotRetentionPeriod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  late final Output<int> retentionPeriod;

  /// Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  late final Output<String?> snapshotCopyGrantName;

  SnapshotCopy3(
    String name, {
    SnapshotCopyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotCopy:SnapshotCopy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.destinationRegion = registerOutput<String>('destinationRegion');
    this.manualSnapshotRetentionPeriod =
        registerOutput<int>('manualSnapshotRetentionPeriod');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int>('retentionPeriod');
    this.snapshotCopyGrantName =
        registerOutput<String?>('snapshotCopyGrantName');
  }
}
