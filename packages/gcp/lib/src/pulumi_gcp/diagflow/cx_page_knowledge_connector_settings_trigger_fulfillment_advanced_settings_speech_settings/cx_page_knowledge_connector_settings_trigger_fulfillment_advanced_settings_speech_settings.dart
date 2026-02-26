// ignore_for_file: unused_element, unnecessary_cast

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings {
  /// Sensitivity of the speech model that detects the end of speech. Scale from 0 to 100.
  final int? endpointerSensitivity;

  /// Mapping from language to Speech-to-Text model. The mapped Speech-to-Text model will be selected for requests from its corresponding language. For more information, see [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  /// An object containing a list of **"key": value** pairs. Example: **{ "name": "wrench", "mass": "1.3kg", "count": "3" }**.
  final Map<String, String>? models;

  /// Timeout before detecting no speech.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final String? noSpeechTimeout;

  /// Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  final bool? useTimeoutBasedEndpointing;

  CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointerSensitivityValue = endpointerSensitivity;
    if (endpointerSensitivityValue != null) {
      map['endpointerSensitivity'] = endpointerSensitivityValue;
    }
    final modelsValue = models;
    if (modelsValue != null) {
      map['models'] = modelsValue;
    }
    final noSpeechTimeoutValue = noSpeechTimeout;
    if (noSpeechTimeoutValue != null) {
      map['noSpeechTimeout'] = noSpeechTimeoutValue;
    }
    final useTimeoutBasedEndpointingValue = useTimeoutBasedEndpointing;
    if (useTimeoutBasedEndpointingValue != null) {
      map['useTimeoutBasedEndpointing'] = useTimeoutBasedEndpointingValue;
    }
    return map;
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings.fromMap(
      Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings(
      endpointerSensitivity: map['endpointerSensitivity'] == null
          ? null
          : map['endpointerSensitivity'] as int,
      models: map['models'] == null
          ? null
          : (map['models'] as Map).cast<String, String>(),
      noSpeechTimeout: map['noSpeechTimeout'] == null
          ? null
          : map['noSpeechTimeout'] as String,
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] == null
          ? null
          : map['useTimeoutBasedEndpointing'] as bool,
    );
  }
}
