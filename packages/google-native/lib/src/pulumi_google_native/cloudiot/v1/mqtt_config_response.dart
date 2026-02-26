// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of MQTT for a device registry.
class MqttConfigResponse {
  /// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
  final String mqttEnabledState;

  MqttConfigResponse({
    required this.mqttEnabledState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mqttEnabledState'] = mqttEnabledState;
    return map;
  }

  factory MqttConfigResponse.fromMap(Map<String, dynamic> map) {
    return MqttConfigResponse(
      mqttEnabledState: map['mqttEnabledState'] as String,
    );
  }
}
