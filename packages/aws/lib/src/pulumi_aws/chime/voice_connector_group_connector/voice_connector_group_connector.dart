// ignore_for_file: unused_element, unnecessary_cast

class VoiceConnectorGroupConnector {
  /// The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first.
  final int priority;

  /// The Amazon Chime Voice Connector ID.
  final String voiceConnectorId;

  VoiceConnectorGroupConnector({
    required this.priority,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorGroupConnector.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorGroupConnector(
      priority: map['priority'] as int,
      voiceConnectorId: map['voiceConnectorId'] as String,
    );
  }
}
