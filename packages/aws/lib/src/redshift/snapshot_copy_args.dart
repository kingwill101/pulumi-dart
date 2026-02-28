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
    required String clusterIdentifier,
    required String destinationRegion,
    int? manualSnapshotRetentionPeriod,
    String? region,
    int? retentionPeriod,
    String? snapshotCopyGrantName,
  })  : clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
        destinationRegion = pulumi.Input.asInput<String>(destinationRegion),
        manualSnapshotRetentionPeriod =
            pulumi.Input.asOptionalInput<int>(manualSnapshotRetentionPeriod),
        region = pulumi.Input.asOptionalInput<String>(region),
        retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
        snapshotCopyGrantName =
            pulumi.Input.asOptionalInput<String>(snapshotCopyGrantName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    map['destinationRegion'] = destinationRegion;
    final manualSnapshotRetentionPeriodValue = manualSnapshotRetentionPeriod;
    if (manualSnapshotRetentionPeriodValue != null) {
      map['manualSnapshotRetentionPeriod'] = manualSnapshotRetentionPeriodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    final snapshotCopyGrantNameValue = snapshotCopyGrantName;
    if (snapshotCopyGrantNameValue != null) {
      map['snapshotCopyGrantName'] = snapshotCopyGrantNameValue;
    }
    return map;
  }

  factory SnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs(
      clusterIdentifier: map['clusterIdentifier'] as String,
      destinationRegion: map['destinationRegion'] as String,
      manualSnapshotRetentionPeriod:
          map['manualSnapshotRetentionPeriod'] == null
              ? null
              : map['manualSnapshotRetentionPeriod'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      retentionPeriod:
          map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
      snapshotCopyGrantName: map['snapshotCopyGrantName'] == null
          ? null
          : map['snapshotCopyGrantName'] as String,
    );
  }
}
