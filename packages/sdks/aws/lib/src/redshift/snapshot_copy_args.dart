// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_snapshot_copy_snapshot_copy_args_doc}
/// The set of arguments for SnapshotCopy.
/// {@endtemplate}
/// {@macro pulumi_redshift_snapshot_copy_snapshot_copy_args_doc}
class SnapshotCopyArgs {
  /// Identifier of the source cluster.
  final pulumi.Input<String> clusterIdentifier;
  /// AWS Region to copy snapshots to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> destinationRegion;
  /// Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  final pulumi.Input<int>? retentionPeriod;
  /// Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  final pulumi.Input<String>? snapshotCopyGrantName;

  /// Creates a new [SnapshotCopyArgs].
  /// [clusterIdentifier] Identifier of the source cluster.
  /// [destinationRegion] AWS Region to copy snapshots to.
  /// [manualSnapshotRetentionPeriod] Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  /// [snapshotCopyGrantName] Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  SnapshotCopyArgs({
    required pulumi.Output<String> clusterIdentifier,
    required pulumi.Output<String> destinationRegion,
    pulumi.Output<int>? manualSnapshotRetentionPeriod,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionPeriod,
    pulumi.Output<String>? snapshotCopyGrantName,
  }) :
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      destinationRegion = pulumi.Input.asInput<String>(destinationRegion),
      manualSnapshotRetentionPeriod = pulumi.Input.asOptionalInput<int>(manualSnapshotRetentionPeriod),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
      snapshotCopyGrantName = pulumi.Input.asOptionalInput<String>(snapshotCopyGrantName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'destinationRegion': destinationRegion,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'snapshotCopyGrantName': ?snapshotCopyGrantName,
    };
  }

  factory SnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs(
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      destinationRegion: pulumi.Output.create<String>(map['destinationRegion'] as String),
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['manualSnapshotRetentionPeriod'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<int>(map['retentionPeriod'] as int),
      snapshotCopyGrantName: map['snapshotCopyGrantName'] == null ? null : pulumi.Output.create<String>(map['snapshotCopyGrantName'] as String),
    );
  }
}

