// ignore_for_file: unused_element, unnecessary_cast

import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_advanced_settings_dtmf_settings.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_advanced_settings_logging_settings.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_advanced_settings_speech_settings.dart';

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings?
  dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// * Agent level
  /// Structure is documented below.
  final CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings?
  loggingSettings;

  /// Settings for speech to text detection. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings?
  speechSettings;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings].
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// [speechSettings] Settings for speech to text detection. Exposed at the following levels:
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings({
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmfSettings': ?dtmfSettings == null ? null : dtmfSettings!.toMap(),
      'loggingSettings': ?loggingSettings == null
          ? null
          : loggingSettings!.toMap(),
      'speechSettings': ?speechSettings == null
          ? null
          : speechSettings!.toMap(),
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings(
      dtmfSettings: map['dtmfSettings'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings.fromMap(
              (map['dtmfSettings'] as Map).cast<String, dynamic>(),
            ),
      loggingSettings: map['loggingSettings'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings.fromMap(
              (map['loggingSettings'] as Map).cast<String, dynamic>(),
            ),
      speechSettings: map['speechSettings'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings.fromMap(
              (map['speechSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
