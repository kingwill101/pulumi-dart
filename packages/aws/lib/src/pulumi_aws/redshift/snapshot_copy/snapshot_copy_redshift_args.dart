// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SnapshotCopy.
class SnapshotCopyRedshiftArgs {
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

  SnapshotCopyRedshiftArgs({
    required this.clusterIdentifier,
    required this.destinationRegion,
    this.manualSnapshotRetentionPeriod,
    this.region,
    this.retentionPeriod,
    this.snapshotCopyGrantName,
  });

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

  factory SnapshotCopyRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyRedshiftArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      destinationRegion: pulumi.Input.asInput<String>(map['destinationRegion']),
      manualSnapshotRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['manualSnapshotRetentionPeriod']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['retentionPeriod']),
      snapshotCopyGrantName:
          pulumi.Input.asOptionalInput<String>(map['snapshotCopyGrantName']),
    );
  }
}
