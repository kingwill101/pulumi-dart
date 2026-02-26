// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_dtmf_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_logging_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_gcs_destination_response.dart';

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playback_interruption_settings at fulfillment level only overrides the playback_interruption_settings at the agent level, leaving other settings at the agent level unchanged. DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  final GoogleCloudDialogflowCxV3beta1GcsDestinationResponse
      audioExportGcsDestination;

  /// Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettingsResponse
      dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettingsResponse
      loggingSettings;

  GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse({
    required this.audioExportGcsDestination,
    required this.dtmfSettings,
    required this.loggingSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioExportGcsDestination'] = audioExportGcsDestination.toMap();
    map['dtmfSettings'] = dtmfSettings.toMap();
    map['loggingSettings'] = loggingSettings.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse(
      audioExportGcsDestination:
          GoogleCloudDialogflowCxV3beta1GcsDestinationResponse.fromMap(
              (map['audioExportGcsDestination'] as Map)
                  .cast<String, dynamic>()),
      dtmfSettings:
          GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettingsResponse
              .fromMap((map['dtmfSettings'] as Map).cast<String, dynamic>()),
      loggingSettings:
          GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettingsResponse
              .fromMap((map['loggingSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
