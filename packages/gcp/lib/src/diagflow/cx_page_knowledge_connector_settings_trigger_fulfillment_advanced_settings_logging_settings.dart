// ignore_for_file: unused_element, unnecessary_cast

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings {
  /// Enables consent-based end-user input redaction, if true, a pre-defined session parameter **$session.params.conversation-redaction** will be used to determine if the utterance should be redacted.
  final bool? enableConsentBasedRedaction;

  /// Enables DF Interaction logging.
  final bool? enableInteractionLogging;

  /// Enables Google Cloud Logging.
  final bool? enableStackdriverLogging;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings].
  /// [enableConsentBasedRedaction] Enables consent-based end-user input redaction, if true, a pre-defined session parameter **$session.params.conversation-redaction** will be used to determine if the utterance should be redacted.
  /// [enableInteractionLogging] Enables DF Interaction logging.
  /// [enableStackdriverLogging] Enables Google Cloud Logging.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableConsentBasedRedactionValue = enableConsentBasedRedaction;
    if (enableConsentBasedRedactionValue != null) {
      map['enableConsentBasedRedaction'] = enableConsentBasedRedactionValue;
    }
    final enableInteractionLoggingValue = enableInteractionLogging;
    if (enableInteractionLoggingValue != null) {
      map['enableInteractionLogging'] = enableInteractionLoggingValue;
    }
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    return map;
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings.fromMap(
      Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings(
      enableConsentBasedRedaction: map['enableConsentBasedRedaction'] == null
          ? null
          : map['enableConsentBasedRedaction'] as bool,
      enableInteractionLogging: map['enableInteractionLogging'] == null
          ? null
          : map['enableInteractionLogging'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] == null
          ? null
          : map['enableStackdriverLogging'] as bool,
    );
  }
}
