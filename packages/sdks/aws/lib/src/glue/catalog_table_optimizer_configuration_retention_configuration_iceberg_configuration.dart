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
  const CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration({
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
      cleanExpiredFiles: (() { final guardedValue = map['cleanExpiredFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberOfSnapshotsToRetain: (() { final guardedValue = map['numberOfSnapshotsToRetain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runRateInHours: (() { final guardedValue = map['runRateInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotRetentionPeriodInDays: (() { final guardedValue = map['snapshotRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

