// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VoiceConnectorGroupConnector {
  /// The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first.
  final pulumi.Input<int> priority;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorGroupConnector].
  /// [priority] The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first.
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  const VoiceConnectorGroupConnector({
    required this.priority,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorGroupConnector.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorGroupConnector(
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      voiceConnectorId: pulumi.Input.fromValue(map['voiceConnectorId'] as String),
    );
  }
}
