// ignore_for_file: unused_element, unnecessary_cast

class AppLoggingSettingsBigqueryExportSettings {
  /// The BigQuery dataset to export the data to.
  final String? dataset;

  /// Indicates whether the BigQuery export is enabled.
  final bool? enabled;

  /// The project ID of the BigQuery dataset to export the data to.
  /// Note: If the BigQuery dataset is in a different project from the app, you should grant
  /// roles/bigquery.admin role to the CES service agent service-<PROJECT-
  /// NUMBER>@gcp-sa-ces.iam.gserviceaccount.com.
  final String? project;

  /// Creates a new [AppLoggingSettingsBigqueryExportSettings].
  /// [dataset] The BigQuery dataset to export the data to.
  /// [enabled] Indicates whether the BigQuery export is enabled.
  /// [project] The project ID of the BigQuery dataset to export the data to.
  AppLoggingSettingsBigqueryExportSettings({
    this.dataset,
    this.enabled,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AppLoggingSettingsBigqueryExportSettings.fromMap(
      Map<String, dynamic> map) {
    return AppLoggingSettingsBigqueryExportSettings(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
