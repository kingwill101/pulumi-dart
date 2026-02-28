// ignore_for_file: unused_element, unnecessary_cast

import 'cx_agent_advanced_settings_audio_export_gcs_destination.dart';
import 'cx_agent_advanced_settings_dtmf_settings.dart';
import 'cx_agent_advanced_settings_logging_settings.dart';
import 'cx_agent_advanced_settings_speech_settings.dart';

class CxAgentAdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// Structure is documented below.
  final CxAgentAdvancedSettingsAudioExportGcsDestination?
      audioExportGcsDestination;

  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxAgentAdvancedSettingsDtmfSettings? dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// * Agent level
  /// Structure is documented below.
  final CxAgentAdvancedSettingsLoggingSettings? loggingSettings;

  /// Settings for speech to text detection. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxAgentAdvancedSettingsSpeechSettings? speechSettings;

  /// Creates a new [CxAgentAdvancedSettings].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// [speechSettings] Settings for speech to text detection. Exposed at the following levels:
  CxAgentAdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
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
    final speechSettingsValue = speechSettings;
    if (speechSettingsValue != null) {
      map['speechSettings'] = speechSettingsValue.toMap();
    }
    return map;
  }

  factory CxAgentAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentAdvancedSettings(
      audioExportGcsDestination: map['audioExportGcsDestination'] == null
          ? null
          : CxAgentAdvancedSettingsAudioExportGcsDestination.fromMap(
              (map['audioExportGcsDestination'] as Map)
                  .cast<String, dynamic>()),
      dtmfSettings: map['dtmfSettings'] == null
          ? null
          : CxAgentAdvancedSettingsDtmfSettings.fromMap(
              (map['dtmfSettings'] as Map).cast<String, dynamic>()),
      loggingSettings: map['loggingSettings'] == null
          ? null
          : CxAgentAdvancedSettingsLoggingSettings.fromMap(
              (map['loggingSettings'] as Map).cast<String, dynamic>()),
      speechSettings: map['speechSettings'] == null
          ? null
          : CxAgentAdvancedSettingsSpeechSettings.fromMap(
              (map['speechSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
