/// The authentication method for the MQTT connection.
enum AkriConnectorsMqttAuthenticationMethod {
  serviceAccountToken("ServiceAccountToken");

  const AkriConnectorsMqttAuthenticationMethod(this.wireValue);
  final String wireValue;

  static AkriConnectorsMqttAuthenticationMethod fromValue(String value) {
    for (final item in AkriConnectorsMqttAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsMqttAuthenticationMethod value: $value');
  }
}
