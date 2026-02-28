// ignore_for_file: unused_element, unnecessary_cast

import 'cx_page_knowledge_connector_settings_trigger_fulfillment_advanced_settings_dtmf_settings.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_advanced_settings_logging_settings.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_advanced_settings_speech_settings.dart';

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings?
      dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// * Agent level
  /// Structure is documented below.
  final CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings?
      loggingSettings;

  /// Settings for speech to text detection. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings?
      speechSettings;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings].
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// [speechSettings] Settings for speech to text detection. Exposed at the following levels:
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings({
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings.fromMap(
      Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings(
      dtmfSettings: map['dtmfSettings'] == null
          ? null
          : CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings
              .fromMap((map['dtmfSettings'] as Map).cast<String, dynamic>()),
      loggingSettings: map['loggingSettings'] == null
          ? null
          : CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings
              .fromMap((map['loggingSettings'] as Map).cast<String, dynamic>()),
      speechSettings: map['speechSettings'] == null
          ? null
          : CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings
              .fromMap((map['speechSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
