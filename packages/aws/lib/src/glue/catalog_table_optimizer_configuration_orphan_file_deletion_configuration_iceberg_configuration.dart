// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration {
  /// Specifies a directory in which to look for files. You may choose a sub-directory rather than the top-level table location. Defaults to the table's location.
  final String? location;

  /// The number of days that orphan files should be retained before file deletion. Defaults to `3`.
  final int? orphanFileRetentionPeriodInDays;

  /// interval in hours between orphan file deletion job runs. Defaults to `24`.
  final int? runRateInHours;

  /// Creates a new [CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration].
  /// [location] Specifies a directory in which to look for files. You may choose a sub-directory rather than the top-level table location. Defaults to the table's location.
  /// [orphanFileRetentionPeriodInDays] The number of days that orphan files should be retained before file deletion. Defaults to `3`.
  /// [runRateInHours] interval in hours between orphan file deletion job runs. Defaults to `24`.
  CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration({
    this.location,
    this.orphanFileRetentionPeriodInDays,
    this.runRateInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'orphanFileRetentionPeriodInDays': ?orphanFileRetentionPeriodInDays,
      'runRateInHours': ?runRateInHours,
    };
  }

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration(
      location: map['location'] == null ? null : map['location'] as String,
      orphanFileRetentionPeriodInDays:
          map['orphanFileRetentionPeriodInDays'] == null
          ? null
          : map['orphanFileRetentionPeriodInDays'] as int,
      runRateInHours: map['runRateInHours'] == null
          ? null
          : map['runRateInHours'] as int,
    );
  }
}
