// ignore_for_file: unused_element, unnecessary_cast

/// Settings for exporting conversations to [Insights](https://cloud.google.com/contact-center/insights/docs).
class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final bool enableInsightsExport;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse({
    required this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableInsightsExport'] = enableInsightsExport;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse(
      enableInsightsExport: map['enableInsightsExport'] as bool,
    );
  }
}
