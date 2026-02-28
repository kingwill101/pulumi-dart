// ignore_for_file: unused_element, unnecessary_cast


class CxSecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  final bool enableInsightsExport;

  /// Creates a new [CxSecuritySettingsInsightsExportSettings].
  /// [enableInsightsExport] If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.
  CxSecuritySettingsInsightsExportSettings({
    required this.enableInsightsExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInsightsExport': enableInsightsExport,
    };
  }

  factory CxSecuritySettingsInsightsExportSettings.fromMap(Map<String, dynamic> map) {
    return CxSecuritySettingsInsightsExportSettings(
      enableInsightsExport: map['enableInsightsExport'] as bool,
    );
  }
}

