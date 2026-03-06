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
  const SnapshotCopyState({
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
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationRegion: (() { final guardedValue = map['destinationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualSnapshotRetentionPeriod: (() { final guardedValue = map['manualSnapshotRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotCopyGrantName: (() { final guardedValue = map['snapshotCopyGrantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

