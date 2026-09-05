// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration {
  /// Specifies a directory in which to look for files. You may choose a sub-directory rather than the top-level table location. Defaults to the table's location.
  final pulumi.Input<String?>? location;
  /// The number of days that orphan files should be retained before file deletion. Defaults to `3`.
  final pulumi.Input<int?>? orphanFileRetentionPeriodInDays;
  /// interval in hours between orphan file deletion job runs. Defaults to `24`.
  final pulumi.Input<int?>? runRateInHours;

  /// Creates a new [CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration].
  /// [location] Specifies a directory in which to look for files. You may choose a sub-directory rather than the top-level table location. Defaults to the table's location.
  /// [orphanFileRetentionPeriodInDays] The number of days that orphan files should be retained before file deletion. Defaults to `3`.
  /// [runRateInHours] interval in hours between orphan file deletion job runs. Defaults to `24`.
  const CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration({
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

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orphanFileRetentionPeriodInDays: (() { final guardedValue = map['orphanFileRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      runRateInHours: (() { final guardedValue = map['runRateInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
