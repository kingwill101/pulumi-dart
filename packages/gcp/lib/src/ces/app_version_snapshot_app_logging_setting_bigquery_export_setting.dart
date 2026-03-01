// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppLoggingSettingBigqueryExportSetting {
  /// (Output)
  /// The BigQuery dataset to export the data to.
  final String? dataset;

  /// (Output)
  /// Whether the guardrail is enabled.
  final bool? enabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final String? project;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingBigqueryExportSetting].
  /// [dataset] (Output)
  /// [enabled] (Output)
  /// [project] The ID of the project in which the resource belongs.
  AppVersionSnapshotAppLoggingSettingBigqueryExportSetting({
    this.dataset,
    this.enabled,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'enabled': ?enabled,
      'project': ?project,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingBigqueryExportSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppLoggingSettingBigqueryExportSetting(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
