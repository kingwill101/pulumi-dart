// ignore_for_file: unused_element, unnecessary_cast

class CxAgentAdvancedSettingsAudioExportGcsDestination {
  /// The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  /// Format: gs://bucket/object-name-or-prefix
  final String? uri;

  CxAgentAdvancedSettingsAudioExportGcsDestination({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory CxAgentAdvancedSettingsAudioExportGcsDestination.fromMap(
      Map<String, dynamic> map) {
    return CxAgentAdvancedSettingsAudioExportGcsDestination(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
