// ignore_for_file: unused_element, unnecessary_cast


/// Settings for exporting conversations to [Insights](https://cloud.google.com/contact-center/insights/docs).
class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final bool? enableInsightsExport;

  /// Creates a new [GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings({
    this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInsightsExport': ?enableInsightsExport,
    };
  }

  factory GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings(
      enableInsightsExport: map['enableInsightsExport'] == null ? null : map['enableInsightsExport'] as bool,
    );
  }
}

