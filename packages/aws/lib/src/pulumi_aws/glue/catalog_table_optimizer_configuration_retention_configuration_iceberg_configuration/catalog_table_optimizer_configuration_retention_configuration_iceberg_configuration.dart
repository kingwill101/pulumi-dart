// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration {
  /// If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, snapshots are only deleted from table metadata, and the underlying data and metadata files are not deleted. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? cleanExpiredFiles;

  /// The number of Iceberg snapshots to retain within the retention period. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> or the corresponding Iceberg table configuration field if it exists.
  final int? numberOfSnapshotsToRetain;

  /// Interval in hours between retention job runs. Defaults to <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span>.
  final int? runRateInHours;

  /// The number of days to retain the Iceberg snapshots. Defaults to <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>, or the corresponding Iceberg table configuration field if it exists.
  final int? snapshotRetentionPeriodInDays;

  CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration({
    this.cleanExpiredFiles,
    this.numberOfSnapshotsToRetain,
    this.runRateInHours,
    this.snapshotRetentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cleanExpiredFilesValue = cleanExpiredFiles;
    if (cleanExpiredFilesValue != null) {
      map['cleanExpiredFiles'] = cleanExpiredFilesValue;
    }
    final numberOfSnapshotsToRetainValue = numberOfSnapshotsToRetain;
    if (numberOfSnapshotsToRetainValue != null) {
      map['numberOfSnapshotsToRetain'] = numberOfSnapshotsToRetainValue;
    }
    final runRateInHoursValue = runRateInHours;
    if (runRateInHoursValue != null) {
      map['runRateInHours'] = runRateInHoursValue;
    }
    final snapshotRetentionPeriodInDaysValue = snapshotRetentionPeriodInDays;
    if (snapshotRetentionPeriodInDaysValue != null) {
      map['snapshotRetentionPeriodInDays'] = snapshotRetentionPeriodInDaysValue;
    }
    return map;
  }

  factory CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration(
      cleanExpiredFiles: map['cleanExpiredFiles'] == null
          ? null
          : map['cleanExpiredFiles'] as bool,
      numberOfSnapshotsToRetain: map['numberOfSnapshotsToRetain'] == null
          ? null
          : map['numberOfSnapshotsToRetain'] as int,
      runRateInHours:
          map['runRateInHours'] == null ? null : map['runRateInHours'] as int,
      snapshotRetentionPeriodInDays:
          map['snapshotRetentionPeriodInDays'] == null
              ? null
              : map['snapshotRetentionPeriodInDays'] as int,
    );
  }
}
