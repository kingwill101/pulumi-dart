// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotCopy.
class SnapshotCopyArgs3 {
  /// Identifier of the source cluster.
  final Input<String> clusterIdentifier;

  /// AWS Region to copy snapshots to.
  ///
  /// The following arguments are optional:
  final Input<String> destinationRegion;

  /// Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  final Input<int>? manualSnapshotRetentionPeriod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  final Input<int>? retentionPeriod;

  /// Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  final Input<String>? snapshotCopyGrantName;

  SnapshotCopyArgs3({
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

  factory SnapshotCopyArgs3.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs3(
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      destinationRegion: Input.asInput<String>(map['destinationRegion']),
      manualSnapshotRetentionPeriod:
          Input.asOptionalInput<int>(map['manualSnapshotRetentionPeriod']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionPeriod: Input.asOptionalInput<int>(map['retentionPeriod']),
      snapshotCopyGrantName:
          Input.asOptionalInput<String>(map['snapshotCopyGrantName']),
    );
  }
}
