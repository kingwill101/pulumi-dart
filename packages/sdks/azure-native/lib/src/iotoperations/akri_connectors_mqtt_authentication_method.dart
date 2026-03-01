/// The authentication method for the MQTT connection.
enum AkriConnectorsMqttAuthenticationMethod {
  serviceAccountToken("ServiceAccountToken");

  const AkriConnectorsMqttAuthenticationMethod(this.value);
  final String value;

  static AkriConnectorsMqttAuthenticationMethod fromValue(String value) {
    for (final item in AkriConnectorsMqttAuthenticationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsMqttAuthenticationMethod value: $value');
  }
}

