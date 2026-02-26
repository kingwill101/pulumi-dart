// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration {
  /// Specifies a directory in which to look for files. You may choose a sub-directory rather than the top-level table location. Defaults to the table's location.
  final String? location;

  /// The number of days that orphan files should be retained before file deletion. Defaults to <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  final int? orphanFileRetentionPeriodInDays;

  /// interval in hours between orphan file deletion job runs. Defaults to <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span>.
  final int? runRateInHours;

  CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration({
    this.location,
    this.orphanFileRetentionPeriodInDays,
    this.runRateInHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final orphanFileRetentionPeriodInDaysValue =
        orphanFileRetentionPeriodInDays;
    if (orphanFileRetentionPeriodInDaysValue != null) {
      map['orphanFileRetentionPeriodInDays'] =
          orphanFileRetentionPeriodInDaysValue;
    }
    final runRateInHoursValue = runRateInHours;
    if (runRateInHoursValue != null) {
      map['runRateInHours'] = runRateInHoursValue;
    }
    return map;
  }

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration(
      location: map['location'] == null ? null : map['location'] as String,
      orphanFileRetentionPeriodInDays:
          map['orphanFileRetentionPeriodInDays'] == null
              ? null
              : map['orphanFileRetentionPeriodInDays'] as int,
      runRateInHours:
          map['runRateInHours'] == null ? null : map['runRateInHours'] as int,
    );
  }
}
