// ignore_for_file: unused_element, unnecessary_cast

/// Settings for exporting conversations to [Insights](https://cloud.google.com/contact-center/insights/docs).
class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final bool? enableInsightsExport;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings({
    this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableInsightsExportValue = enableInsightsExport;
    if (enableInsightsExportValue != null) {
      map['enableInsightsExport'] = enableInsightsExportValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings(
      enableInsightsExport: map['enableInsightsExport'] == null
          ? null
          : map['enableInsightsExport'] as bool,
    );
  }
}
