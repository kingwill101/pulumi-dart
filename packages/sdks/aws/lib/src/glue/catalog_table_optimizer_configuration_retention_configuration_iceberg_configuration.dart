// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration {
  /// If set to `false`, snapshots are only deleted from table metadata, and the underlying data and metadata files are not deleted. Defaults to `false`.
  final pulumi.Input<bool>? cleanExpiredFiles;
  /// The number of Iceberg snapshots to retain within the retention period. Defaults to `1` or the corresponding Iceberg table configuration field if it exists.
  final pulumi.Input<int>? numberOfSnapshotsToRetain;
  /// Interval in hours between retention job runs. Defaults to `24`.
  final pulumi.Input<int>? runRateInHours;
  /// The number of days to retain the Iceberg snapshots. Defaults to `5`, or the corresponding Iceberg table configuration field if it exists.
  final pulumi.Input<int>? snapshotRetentionPeriodInDays;

  /// Creates a new [CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration].
  /// [cleanExpiredFiles] If set to `false`, snapshots are only deleted from table metadata, and the underlying data and metadata files are not deleted. Defaults to `false`.
  /// [numberOfSnapshotsToRetain] The number of Iceberg snapshots to retain within the retention period. Defaults to `1` or the corresponding Iceberg table configuration field if it exists.
  /// [runRateInHours] Interval in hours between retention job runs. Defaults to `24`.
  /// [snapshotRetentionPeriodInDays] The number of days to retain the Iceberg snapshots. Defaults to `5`, or the corresponding Iceberg table configuration field if it exists.
  CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration({
    this.cleanExpiredFiles,
    this.numberOfSnapshotsToRetain,
    this.runRateInHours,
    this.snapshotRetentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanExpiredFiles': ?cleanExpiredFiles,
      'numberOfSnapshotsToRetain': ?numberOfSnapshotsToRetain,
      'runRateInHours': ?runRateInHours,
      'snapshotRetentionPeriodInDays': ?snapshotRetentionPeriodInDays,
    };
  }

  factory CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration(
      cleanExpiredFiles: map['cleanExpiredFiles'] == null ? null : (map['cleanExpiredFiles'] as bool).input(),
      numberOfSnapshotsToRetain: map['numberOfSnapshotsToRetain'] == null ? null : (map['numberOfSnapshotsToRetain'] as int).input(),
      runRateInHours: map['runRateInHours'] == null ? null : (map['runRateInHours'] as int).input(),
      snapshotRetentionPeriodInDays: map['snapshotRetentionPeriodInDays'] == null ? null : (map['snapshotRetentionPeriodInDays'] as int).input(),
    );
  }
}

