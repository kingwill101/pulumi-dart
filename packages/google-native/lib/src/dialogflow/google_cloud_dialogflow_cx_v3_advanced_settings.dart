// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_advanced_settings_dtmf_settings.dart';
import 'google_cloud_dialogflow_cx_v3_advanced_settings_logging_settings.dart';
import 'google_cloud_dialogflow_cx_v3_gcs_destination.dart';

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playback_interruption_settings at fulfillment level only overrides the playback_interruption_settings at the agent level, leaving other settings at the agent level unchanged. DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3AdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  final GoogleCloudDialogflowCxV3GcsDestination? audioExportGcsDestination;

  /// Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  final GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings? dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  final GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings?
      loggingSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AdvancedSettings].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  /// [dtmfSettings] Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  GoogleCloudDialogflowCxV3AdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioExportGcsDestinationValue = audioExportGcsDestination;
    if (audioExportGcsDestinationValue != null) {
      map['audioExportGcsDestination'] = audioExportGcsDestinationValue.toMap();
    }
    final dtmfSettingsValue = dtmfSettings;
    if (dtmfSettingsValue != null) {
      map['dtmfSettings'] = dtmfSettingsValue.toMap();
    }
    final loggingSettingsValue = loggingSettings;
    if (loggingSettingsValue != null) {
      map['loggingSettings'] = loggingSettingsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AdvancedSettings(
      audioExportGcsDestination: map['audioExportGcsDestination'] == null
          ? null
          : GoogleCloudDialogflowCxV3GcsDestination.fromMap(
              (map['audioExportGcsDestination'] as Map)
                  .cast<String, dynamic>()),
      dtmfSettings: map['dtmfSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromMap(
              (map['dtmfSettings'] as Map).cast<String, dynamic>()),
      loggingSettings: map['loggingSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromMap(
              (map['loggingSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
