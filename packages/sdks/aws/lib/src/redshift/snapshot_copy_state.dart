// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotCopy resources.
class SnapshotCopyState {
  /// Identifier of the source cluster.
  final pulumi.Input<String>? clusterIdentifier;
  /// AWS Region to copy snapshots to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? destinationRegion;
  /// Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  final pulumi.Input<int>? retentionPeriod;
  /// Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  final pulumi.Input<String>? snapshotCopyGrantName;

  /// Creates a new [SnapshotCopyState].
  /// [clusterIdentifier] Identifier of the source cluster.
  /// [destinationRegion] AWS Region to copy snapshots to.
  /// [manualSnapshotRetentionPeriod] Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  /// [snapshotCopyGrantName] Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  SnapshotCopyState({
    this.clusterIdentifier,
    this.destinationRegion,
    this.manualSnapshotRetentionPeriod,
    this.region,
    this.retentionPeriod,
    this.snapshotCopyGrantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'destinationRegion': ?destinationRegion,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'snapshotCopyGrantName': ?snapshotCopyGrantName,
    };
  }

  factory SnapshotCopyState.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyState(
      clusterIdentifier: map['clusterIdentifier'] == null ? null : (map['clusterIdentifier'] as String).input(),
      destinationRegion: map['destinationRegion'] == null ? null : (map['destinationRegion'] as String).input(),
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] == null ? null : (map['manualSnapshotRetentionPeriod'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
      snapshotCopyGrantName: map['snapshotCopyGrantName'] == null ? null : (map['snapshotCopyGrantName'] as String).input(),
    );
  }
}

